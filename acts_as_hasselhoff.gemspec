# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_hasselhoff/version'

Gem::Specification.new do |spec|
  spec.name        = 'acts_as_hasselhoff'
  spec.version     = ActsAsHasselhoff::VERSION
  spec.authors     = ['James Adam', 'Mario Zigliotto']
  spec.email       = ['mariozig@gmail.com']
  spec.homepage    = 'https://github.com/mariozig/acts_as_hasselhoff/'
  spec.summary     = 'You know it. You love it. Still on Github. As dumb as ever.'
  spec.description = 'Injects Hoff-based magic into your Rails application.'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 4.1', '>= 4.1.8'
end
