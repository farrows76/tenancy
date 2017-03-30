$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tenancy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tenancy"
  s.version     = Tenancy::VERSION
  s.authors     = ["Steve Farrow"]
  s.email       = ["farrows76@gmail.com"]
  s.homepage    = "https://github.com/farrows76/tenancy"
  s.summary     = "Simple middleware to set up a Multitenant environment."
  s.description = "Simple middleware to set up a Multitenant environment."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # s.add_dependency "rails", "~> 5.0.2"
  s.add_dependency 'activerecord',    '>= 3.1.2', '< 6.0'
  s.add_dependency 'rack',            '>= 1.3.6'
  s.add_dependency 'public_suffix',   '~> 2.0.5'

  s.add_development_dependency "sqlite3"
end
