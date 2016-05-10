# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'regex_for_range/version'

Gem::Specification.new do |spec|
  spec.name          = 'regex_for_range'
  spec.version       = RegexForRange::VERSION
  spec.authors       = ['Dhwanit Gupta']
  spec.email         = ['dhwanitgupta123@gmail.com']

  spec.summary       = 'Simple gem to get all regex given integer range'
  spec.description   = 'Simple gem to get all regex given integer range'
  spec.homepage      = 'http://rubygems.org/gems/regex_for_range'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
