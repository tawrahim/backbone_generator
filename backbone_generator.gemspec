# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backbone_generator/version'
require 'backbone_generator/post_install_message'

Gem::Specification.new do |spec|
  spec.name          = "backbone_generator"
  spec.version       = BackboneGenerator::VERSION
  spec.authors       = ["Tawheed Abdul-Raheem"]
  spec.email         = ["tawrahim@gmail.com"]
  spec.description   = %q{Backbone.js generator}
  spec.summary       = %q{Yet another backbone js generator}
  spec.homepage      = "http://tawrahim.github.io/backbone_generator_web/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  
  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 2.6"

  spec.add_dependency              "thor"
  spec.add_dependency              "colorize", "~>0.6.0"

  spec.post_install_message = BackboneGenerator.post_install_message
end
