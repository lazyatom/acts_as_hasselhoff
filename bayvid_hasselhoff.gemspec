$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bayvid_hasselhoff/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bayvid_hasselhoff"
  s.version     = BayvidHasselhoff::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BayvidHasselhoff."
  s.description = "TODO: Description of BayvidHasselhoff."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.8"

  s.add_development_dependency "sqlite3"
end
