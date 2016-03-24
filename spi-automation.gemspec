# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spi/automation/version'

Gem::Specification.new do |spec|
  spec.name          = "spi-automation"
  spec.version       = Spi::Automation::VERSION
  spec.authors       = ["SPI"]
  spec.email         = ["contact@spi.com"]
  spec.summary       = %q{Write a short summary. Required.}
  spec.description   = %q{Write a longer description. Optional.}
  spec.homepage      = "http://www.spi.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "cucumber"
  spec.add_runtime_dependency "watir"
  spec.add_runtime_dependency "page-object"
  spec.add_runtime_dependency "selenium-webdriver"
  spec.add_runtime_dependency "require_all"
  spec.add_runtime_dependency "awesome_print"
 
end
