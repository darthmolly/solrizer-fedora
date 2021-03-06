require 'solrizer/field_mapper.rb'
require 'solrizer/field_name_mapper'

require 'solrizer/fedora/indexer'
require 'solrizer/xml'
require 'solrizer/html'

# Let people explicitly require xml support if they want it ...
# require 'solrizer/xml.rb'

require 'fastercsv' # this is used by solrize_objects when you pass it a csv file of pids
require "ruby-debug"


module Solrizer::Fedora
class Solrizer

  attr_accessor :indexer, :index_full_text

  #
  # This method initializes the indexer
  # If passed an argument of :index_full_text=>true, it will perform full-text indexing instead of indexing fields only.
  #
  def initialize( opts={} )
    @@index_list = false unless defined?(@@index_list)
    if opts[:index_full_text] == true || opts[:index_full_text] == "true"
      @index_full_text = true 
    else
      @index_full_text = false 
    end
    @indexer = Indexer.new( :index_full_text=>@index_full_text )
  end

  # Solrize the given Fedora object's full-text and facets into the search index
  #
  # @param [String or ActiveFedora::Base] obj the object to solrize
  # @param [Hash] opts optional parameters
  # @example Suppress errors using :suppress_errors option
  #   solrizer.solrize("my:pid", :suppress_errors=>true)
  def solrize( obj, opts={} )
    # retrieve the Fedora object based on the given unique id
      
      begin
      
      start = Time.now
      logger.debug "SOLRIZER Retrieving object #{obj} ..."

      case obj
      when ActiveFedora::Base
        # do nothing
      when Fedora::FedoraObject
        obj = Repository.get_object( obj.pid )
      when String
        obj = Repository.get_object( obj )
      else
        raise "you must pass either a ActiveFedora::Base, Fedora::RepositoryObject, or a String.  You submitted a #{obj.class}"
      end
      
      # obj = obj.kind_of?(ActiveFedora::Base) ? obj : Repository.get_object( obj )
        
          obj_done = Time.now
          obj_done_elapse = obj_done - start
          logger.debug  " completed. Duration: #{obj_done_elapse}"
          
         logger.debug "\t Indexing object #{obj.pid} ... "
         # add the keywords and facets to the search index
         index_start = Time.now
         indexer.index( obj )
         
         index_done = Time.now
         index_elapsed = index_done - index_start
         
          logger.debug "completed. Duration:  #{index_elapsed} ."
        
      
      rescue Exception => e
        if opts[:suppress_errors] 
          logger.debug "SOLRIZER unable to index #{obj}.  Failed with #{e.inspect}"
        else
          raise e
        end
    end #begin

  end
  
  # Retrieve a comprehensive list of all the unique identifiers in Fedora and 
  # solrize each object's full-text and facets into the search index
  #
  # @example Suppress errors using :suppress_errors option
  #   solrizer.solrize_objects( :suppress_errors=>true )
  def solrize_objects(opts={})
    # retrieve a list of all the pids in the fedora repository
    num_docs = 1000000   # modify this number to guarantee that all the objects are retrieved from the repository
    puts "WARNING: You have turned off indexing of Full Text content.  Be sure to re-run indexer with @@index_full_text set to true in main.rb" if index_full_text == false

    if @@index_list == false
      
      objects = ::Fedora::Repository.instance.find_objects(:limit=>num_docs)

      puts "Shelving #{objects.length} Fedora objects"
      objects.each do |object|
        solrize( object, opts )
      end
     
    else
    
       if File.exists?(@@index_list)
          arr_of_pids = FasterCSV.read(@@index_list, :headers=>false)
          
          puts "Indexing from list at #{@@index_list}"
          puts "Shelving #{arr_of_pids.length} Fedora objects"
          
         arr_of_pids.each do |row|
            pid = row[0]
            solrize( pid )
	 end #FASTERCSV
        else
          puts "#{@@index_list} does not exists!"
        end #if File.exists
     
    end #if Index_LISTS
  end #solrize_objects

end #class
end #module