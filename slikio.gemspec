# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slikio/version'

Gem::Specification.new do |spec|
  spec.name          = "slikio"
  spec.version       = Slikio::VERSION
  spec.authors       = ["Daniel Brodsky"]
  spec.email         = ["daniel@slik.io"]
  spec.description   = "Slik.IO ruby gem"
  spec.summary       = "This is a ruby gem for Slik.IO"
  spec.homepage      = "https://github.com/SlikIO/slikio-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rest-client"
end
