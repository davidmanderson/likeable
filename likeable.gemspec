# -*- encoding: utf-8 -*-
require File.expand_path('../lib/likeable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nick Pellant"]
  gem.email         = ["contact@nickpellant.com"]
  gem.description   = %q{Likeable adds like functionality to existing models.}
  gem.summary       = %q{Like functionality}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "likeable"
  gem.require_paths = ["lib"]
  gem.version       = Likeable::VERSION
end
