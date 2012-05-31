# -*- encoding: utf-8 -*-
require File.expand_path('../lib/underscore-source/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel X. Moore"]
  gem.email         = ["yahivin@gmail.com"]
  gem.description   = %q{Let's have bundler manage our asset dependencies yo.}
  gem.summary       = %q{A gem wrapper for underscore.js}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "underscore-source"
  gem.require_paths = ["lib"]
  gem.version       = Underscore::Source::VERSION
end
