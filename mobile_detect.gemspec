# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mobile_detect/version'

Gem::Specification.new do |gem|
  gem.name          = "mobile_detect"
  gem.version       = MobileDetect::VERSION
  gem.authors       = ["Dmitry Gruzd"]
  gem.email         = ["donotsendhere@gmail.com"]
  gem.description   = %q{ gem detect mobile device or not, tablet or mobile phone}
  gem.summary       = %q{Mobile_Detect is a lightweight gem for detecting mobile devices. It uses the user-agent string combined with specific HTTP headers to detect the mobile environment.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  
end
