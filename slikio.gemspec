# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slikio/version'

Gem::Specification.new do |spec|
  spec.name          = "slikio"
  spec.version       = Slikio::VERSION
  spec.authors       = ["Daniel Brodsky"]
  spec.email         = ["daniel@slik.io"]
  spec.description   = "Slik.IO - Charts for developers"
  spec.summary       = "This is a ruby gem for Slik.IO"
  spec.homepage      = "http://slik.io"
  spec.license       = "MIT"
  spec.post_install_message = "Congratulations!\nSlik.IO gem successfully installed.\nNow sign up at http://slik.io and start creating charts as easy as it gets"
 
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.0"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rest-client"
end
