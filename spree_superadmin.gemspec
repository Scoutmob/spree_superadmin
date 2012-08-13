# -*- encoding: utf-8 -*-
require File.expand_path('../lib/spree_superadmin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Calvin Yu"]
  gem.email         = ["calvin@scoutmob.com"]
  gem.description   = %q{Provides extra admin functionality to correct orders for those cases when the fit hits the shans.}
  gem.summary       = %q{Super Admin plugin for Spree}
  gem.homepage      = "https://github.com/Scoutmob/spree_superadmin"
  gem.required_ruby_version = '>= 1.9.0'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "spree_superadmin"
  gem.require_paths = ["lib"]
  gem.version       = SpreeSuperadmin::VERSION

  gem.add_dependency 'spree_core', '>= 1.1.0'
  gem.add_development_dependency 'rspec-rails'

end
