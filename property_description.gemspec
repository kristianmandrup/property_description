$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "property_description/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "property_description"
  s.version     = PropertyDescription::VERSION
  s.authors     = ["Kristian Mandrup"]
  s.email       = ["kmandrup@gmail.com"]
  s.homepage    = "http://www.danrent.dk"
  s.summary     = "Description package for Property"
  s.description = "Property Description functionality"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  # s.add_dependency "rails", "~> 3.2.13.rc2"
  # s.add_dependency "jquery-rails"
end
