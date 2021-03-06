# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frilans_finans_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'frilans_finans_api'
  spec.version       = FrilansFinansAPI::VERSION
  spec.authors       = ['Jacob Burenstam']
  spec.email         = ['burenstam@gmail.com']

  spec.summary       = 'Interact with Frilans Finans API'
  spec.description   = 'Interact with Frilans Finans API, easy to use and configure.'
  spec.homepage      = 'https://github.com/buren/frilans_finans_api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty', '~> 0.13' # Easy HTTP requests

  spec.add_development_dependency 'webmock', '~> 2.0'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
