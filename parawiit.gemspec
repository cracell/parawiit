require File.expand_path('../lib/parawiit/version', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{parawiit}
  s.summary = %q{A Wiimote Driver to get the Gyro data off of it for OS X}
  s.description = %q{A Wiimote Driver to get the Gyro data off of it for OS X}
  s.version =  Parawiit::Version::STRING
  s.authors = ["Eric Cranston"]
  s.email = %q{contact@ericcranston.com}
  s.homepage = %q{http://github.com/cracell/parawiit}
  s.extensions = ["ext/parawiit/extconf.rb"]
  
  s.required_rubygems_version = '>= 1.3.7'
  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")
  #s.files = Dir.glob("lib}**/*") + %w(LICENSE.txt) + ["ext/**/*.{c, h, rb}"]

  #s.add_development_dependency('minitest', ["= 2.6.1"])
end