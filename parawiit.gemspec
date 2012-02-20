require "lib/version.rb"

Gem::Specification.new do |s|
  s.name = %q{WiimoteGyro}
  s.summary = %q{A Wiimote Driver to get the Gyro data off of it for OS X}
  s.description = %q{A Wiimote Driver to get the Gyro data off of it for OS X}
  s.version =  WiimoteGyro::Version::STRING
  s.authors = ["Eric Cranston"]
  s.email = %q{contact@ericcranston.com}
  s.homepage = %q{http://github.com/cracell/wiimote-gyro}

  s.required_rubygems_version = '>= 1.3.6'
  s.require_paths = ["lib"]
  s.files = Dir.glob("lib}**/*") + %w(LICENSE.txt) + ["ext/**/*.{c, h, rb}"]

  #s.add_development_dependency('minitest', ["= 2.6.1"])
end