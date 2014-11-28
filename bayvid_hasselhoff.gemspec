# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bayvid_hasselhoff/version'

Gem::Specification.new do |spec|
  spec.name        = 'bayvid_hasselhoff'
  spec.version     = BayvidHasselhoff::VERSION
  spec.authors     = ["Mario Zigliotto"]
  spec.email       = ["mariozig@gmail.com"]
  spec.homepage    = "https://github.com/mariozig/acts_as_hasselhoff/"
  spec.summary     = "You know it. You love it. Now it's on github. As dumb as ever."
  spec.description = "BayvidHasselhoff."
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.1.8"
end
