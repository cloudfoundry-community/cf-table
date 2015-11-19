# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cf/table/version'

Gem::Specification.new do |spec|
  spec.name          = "cf-table"
  spec.version       = CF::Table::VERSION
  spec.authors       = ["Ruben Koster"]
  spec.email         = ["rkoster@starkandwayne.com"]

  spec.summary       = %q{Simple cli for show the results from `cf curl` in a table.}
  spec.description   = %q{Simple cli for show the results from `cf curl` in a table.}
  spec.homepage      = "https://github.com/cloudfoundry-community/cf-table"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'terminal-table'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
