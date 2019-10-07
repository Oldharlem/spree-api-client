# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree-api-client/version'

Gem::Specification.new do |gem|
  gem.name          = "spree-api-client"
  gem.version       = Spree::API::Client::VERSION
  gem.authors       = ["Fabian Oudhaarlem"]
  gem.email         = ["fabian@oldharlem.nl"]
  gem.description   = %q{A rubygem for interacting with the Spree API}
  gem.summary       = %q{A rubygem for interacting with the Spree API}
  gem.homepage      = "https://github.com/Oldharlem/spree-api-client"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'hashie'
  gem.add_dependency 'faraday'
  gem.add_dependency 'faraday_middleware'

  gem.add_dependency 'multi_json'
  gem.add_dependency 'httparty'#, '~> 0.9'

  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
end
