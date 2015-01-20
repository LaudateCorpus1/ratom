# -*- encoding: utf-8 -*-
require File.expand_path('../lib/atom/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "ratom"
  s.version = Atom::VERSION

  s.authors = ["Peerworks", "Sean Geoghegan"]
  s.description = "A fast Atom Syndication and Publication API based on libxml"
  s.email = "seangeo@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.homepage = "http://github.com/seangeo/ratom"
  s.require_paths = ["lib"]
  s.summary = "Atom Syndication and Publication API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<libxml-ruby>, ["~> 2.6"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.10.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.5.6"])
    else
      s.add_dependency(%q<libxml-ruby>, ["~> 2.6"])
      s.add_dependency(%q<bundler>, ["~> 1.1"])
      s.add_dependency(%q<rspec>, ["~> 2.10.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
    end
  else
    s.add_dependency(%q<libxml-ruby>, ["~> 2.6"])
    s.add_dependency(%q<bundler>, ["~> 1.1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.10.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
  end
end

