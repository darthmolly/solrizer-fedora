# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{solrizer-fedora}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Zumwalt"]
  s.date = %q{2011-05-08}
  s.description = %q{An extension to projecthydra/solrizer that provides utilities for loading objects from Fedora Repositories and creating solr documents from them.}
  s.email = %q{matt.zumwalt@yourmediashelf.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.textile"
  ]
  s.files = [
    ".document",
    ".gitmodules",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "History.textile",
    "LICENSE",
    "README.textile",
    "Rakefile",
    "VERSION",
    "config/fedora.yml",
    "config/hydra_types.yml",
    "config/solr.yml",
    "lib/solrizer-fedora.rb",
    "lib/solrizer/fedora.rb",
    "lib/solrizer/fedora/extractor.rb",
    "lib/solrizer/fedora/indexer.rb",
    "lib/solrizer/fedora/repository.rb",
    "lib/solrizer/fedora/solrizer.rb",
    "lib/tasks/solrizer-fedora.rake",
    "solrizer-fedora.gemspec",
    "spec/fixtures/rels_ext_cmodel.xml",
    "spec/integration/fedora_indexer_spec.rb",
    "spec/lib/solrizer/indexer_spec.rb",
    "spec/rcov.opts",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/units/fedora_extractor_spec.rb",
    "spec/units/fedora_indexer_spec.rb",
    "spec/units/fedora_solrizer_spec.rb"
  ]
  s.homepage = %q{http://github.com/projecthydra/solrizer-fedora}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{An extension to solrizer that deals with Fedora objects & Repositories}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<solrizer-fedora>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<jettywrapper>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug-base>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["< 2.0.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<RedCloth>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<jettywrapper>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug-base>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["< 2.0.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<RedCloth>, [">= 0"])
      s.add_runtime_dependency(%q<solr-ruby>, [">= 0.0.6"])
      s.add_runtime_dependency(%q<active-fedora>, [">= 2.2.0"])
      s.add_runtime_dependency(%q<rsolr>, [">= 0"])
      s.add_runtime_dependency(%q<solrizer>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<fastercsv>, [">= 0"])
    else
      s.add_dependency(%q<solrizer-fedora>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<jettywrapper>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<ruby-debug-base>, [">= 0"])
      s.add_dependency(%q<rspec>, ["< 2.0.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<RedCloth>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<jettywrapper>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<ruby-debug-base>, [">= 0"])
      s.add_dependency(%q<rspec>, ["< 2.0.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<RedCloth>, [">= 0"])
      s.add_dependency(%q<solr-ruby>, [">= 0.0.6"])
      s.add_dependency(%q<active-fedora>, [">= 2.2.0"])
      s.add_dependency(%q<rsolr>, [">= 0"])
      s.add_dependency(%q<solrizer>, [">= 1.0.0"])
      s.add_dependency(%q<fastercsv>, [">= 0"])
    end
  else
    s.add_dependency(%q<solrizer-fedora>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<jettywrapper>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<ruby-debug-base>, [">= 0"])
    s.add_dependency(%q<rspec>, ["< 2.0.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<RedCloth>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<jettywrapper>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<ruby-debug-base>, [">= 0"])
    s.add_dependency(%q<rspec>, ["< 2.0.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<RedCloth>, [">= 0"])
    s.add_dependency(%q<solr-ruby>, [">= 0.0.6"])
    s.add_dependency(%q<active-fedora>, [">= 2.2.0"])
    s.add_dependency(%q<rsolr>, [">= 0"])
    s.add_dependency(%q<solrizer>, [">= 1.0.0"])
    s.add_dependency(%q<fastercsv>, [">= 0"])
  end
end

