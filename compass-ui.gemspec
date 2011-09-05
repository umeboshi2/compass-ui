# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'compass-ui/version'

Gem::Specification.new do |s|
  # Metadata
  s.name          = 'compass-ui'
  s.version       = CompassUI::VERSION
  s.authors       = ['Patrick Ward']
  s.email         = ['oss@patrickward.com']

  s.summary       = "jQuery UI theme builder for the Compass CSS Authoring Framework"
  s.description   = "Compass-UI is a jQuery UI theme builder for the Compass CSS Authoring Framework."
  s.homepage      = 'https://github.com/patrickward/compass-ui'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'compass', [">= 0.11.1"]

end
