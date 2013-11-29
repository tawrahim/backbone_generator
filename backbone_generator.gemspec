# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backbone_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "backbone_generator"
  spec.version       = BackboneGenerator::VERSION
  spec.authors       = ["Tawheed Abdul-Raheem"]
  spec.email         = ["tawrahim@gmail.com"]
  spec.description   = %q{Backbone.js generator}
  spec.summary       = %q{Backbone.js generator}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"

  spec.post_install_message = <<-EOS

==== Release notes for BackboneGenerator gem ====

This gem is NOT yet ready for prime time. PLEASE DO NOT
USE this gem yet. We are working hard to make dependecy
management and boiler plate code generation in your
backbone.js apps seameless.

Tawheed and Mhd

=======================================
  EOS
end
