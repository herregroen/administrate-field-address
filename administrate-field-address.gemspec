# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-address"
  spec.version       = "0.0.1"
  spec.authors       = ["Herre Groen"]
  spec.email         = ["herregroen@noxqs.nl"]
  spec.homepage      = "https://www.noxqs.nl"
  spec.summary       = "Google Maps Address Field"
  spec.description   = spec.summary
  spec.license       = "MIT"
  spec.require_paths = ["lib"]
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.add_dependency "administrate"
  spec.add_dependency "rails"
end
