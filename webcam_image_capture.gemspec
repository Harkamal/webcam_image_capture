$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "webcam_image_capture/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "webcam_image_capture"
  s.version     = WebcamImageCapture::VERSION
  s.authors     = ["Harkamal Singh"]
  s.email       = ["honey.rawal89@gmail.com"]
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.8"

  s.add_development_dependency "sqlite3"
end
