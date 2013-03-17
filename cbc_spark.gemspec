# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbc_spark/version'

Gem::Specification.new do |spec|
  spec.name          = "cbc_spark"
  spec.version       = CbcSpark::VERSION
  spec.authors       = ["Matt Harmes"]
  spec.email         = ["matt@harmes.ca"]
  spec.description   = %q{Rubygem for accessing episodes from CBC Spark (http://cbc.ca/spark)}
  spec.summary       = %q{Rubygem for accessing episodes from CBC Spark (http://cbc.ca/spark)}
  spec.homepage      = "https://github.com/harmesy/cbc_spark"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "httparty"
end
