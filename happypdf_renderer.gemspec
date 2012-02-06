$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "happypdf_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "happypdf_renderer"
  s.version     = HappypdfRenderer::VERSION
  s.authors     = ["Lars Brillert"]
  s.email       = "lars@railslove.com"
  s.homepage    = "http://railslove.com"
  s.summary     = "TODO: Summary of HappypdfRenderer."
  s.description = "TODO: Description of HappypdfRenderer."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "httparty", "~> 0.8.0"

  s.add_development_dependency "sqlite3"
end
