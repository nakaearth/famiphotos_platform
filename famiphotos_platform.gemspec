$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "famiphotos_platform/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "famiphotos_platform"
  s.version     = FamiphotosPlatform::VERSION
  s.authors     = ["nakamura shinichirou"]
  s.email       = ["naka5313@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FamiphotosPlatform."
  s.description = "TODO: Description of FamiphotosPlatform."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
