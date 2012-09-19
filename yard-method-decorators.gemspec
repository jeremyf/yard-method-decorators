# -*- encoding: utf-8 -*-
require File.expand_path('../lib/yard-method-decorators/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [
    "Jeremy Friesen",
  ]
  gem.email         = [
    "jeremy.n.friesen@gmail.com",
  ]
  gem.description   = %q{Captures MethodDecorators in YARD}
  gem.summary       = %q{Captures MethodDecorators in YARD}
  gem.homepage      = "http://github.com/jeremyf/yard-method-decorators"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "yard-method-decorators"
  gem.require_paths = ["lib"]
  gem.version       = Yard::Method::Decorators::VERSION
  gem.add_dependency 'yard'
  gem.add_dependency 'method_decorators'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rspec-given'
end
