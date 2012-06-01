# -*- encoding: utf-8 -*-
require File.expand_path('../lib/capistrano-thin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["John Bintz"]
  gem.email         = ["john@coswellproductions.com"]
  gem.description   = %q{Capistrano helper for managing a thin server}
  gem.summary       = %q{Capistrano helper for managing a thin server}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "capistrano-thin"
  gem.require_paths = ["lib"]
  gem.version       = Capistrano::Thin::VERSION

  gem.add_dependency 'capistrano'
end
