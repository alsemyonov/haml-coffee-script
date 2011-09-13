# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'haml/filters/coffee/version'

Gem::Specification.new do |s|
  s.name        = 'haml-coffee-script'
  s.version     = Haml::Filters::Coffee::VERSION
  s.authors     = ['Alexander Semyonov']
  s.email       = ['al@semyonov.us']
  s.homepage    = 'http://github.com/alsemyonov/haml-coffee-script'
  s.summary     = %q{CoffeeScript (:coffee) filter for Haml}
  s.description = %q{Write CoffeeScript inside Haml templates by using filter :coffee}

  s.rubyforge_project = 'haml-coffee-script'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  # s.add_development_dependency 'rspec'
  s.add_runtime_dependency 'haml'
  s.add_runtime_dependency 'coffee-script'
end
