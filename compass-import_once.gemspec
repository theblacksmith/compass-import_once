# -*- encoding: utf-8 -*-
require File.expand_path("../lib/compass/import_once/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "compass-import_once"
  s.version     = Compass::ImportOnce::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["The Blacksmith (a.k.a. Saulo Vallory)"]
  s.email       = ["me@saulovallory.com"]
  s.homepage    = "http://theblacksmithhq.com/"
  s.summary     = %q{Makes `sass-import_once` work with compass.}
  s.description = %q{
    Monkey patches compass to make `sass-import_once` work while 
    this issue is not solved: https://github.com/chriseppstein/compass/pull/1140
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'compass', '>= 0.12.2'
  s.add_runtime_dependency 'sass-import_once', '>= 0.1.2'

end
