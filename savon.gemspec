# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'savon/version'

Gem::Specification.new do |s|
  s.name        = 'savon'
  s.version     = Savon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Daniel Harrington"
  s.email       = "me@rubiii.com"
  s.homepage    = "http://savonrb.com"
  s.summary     = "Heavy metal SOAP client"
  s.description = s.summary

  s.rubyforge_project = s.name
  s.license = 'MIT'

  spec.add_dependency "nori",     "~> 2.3.0"
  spec.add_dependency "httpi",    "~> 2.1.0"
  spec.add_dependency "wasabi",   "~> 3.2.0"
  spec.add_dependency "akami",    "~> 1.2.0"
  spec.add_dependency "gyoku",    "~> 1.1.0"

  spec.add_dependency "builder",  ">= 2.1.2"
  spec.add_dependency "nokogiri", ">= 1.4.0", "< 1.6"

  spec.add_development_dependency "rack"
  spec.add_development_dependency 'activemodel', '>= 3.2.11'
  spec.add_development_dependency "puma",  "2.0.0.b4"

  spec.add_development_dependency "rake",  "~> 10.1"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "mocha", "~> 0.14"
  spec.add_development_dependency "json",  "~> 1.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  ignores  = File.readlines(".gitignore").grep(/\S+/).map(&:chomp)
  dotfiles = %w[.gitignore .travis.yml .yardopts]

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
