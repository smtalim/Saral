# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'saral/version'

Gem::Specification.new do |spec|
  spec.name          = "saral"
  spec.version       = Saral::VERSION
  spec.authors       = ["SatishTalim"]
  spec.email         = ["satish@rubylearning.org"]
  spec.description   = %q{A Rack-based Web Framework built by RubyLearning.}
  spec.summary       = %q{A Rack-based Web Framework}
  spec.homepage      = "http://rubylearning.org/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "erubis"
  spec.add_runtime_dependency "rest-client"
  spec.add_runtime_dependency "crack"
end
