# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape_url_validator/version'

Gem::Specification.new do |spec|
  spec.name          = 'grape_url_validator'
  spec.version       = GrapeUrlValidator::VERSION
  spec.authors       = ['Dean Papastrat']
  spec.email         = ['dean.g.papastrat@gmail.com']

  spec.summary       = %q{Adds URL validation to your Grape API parameters.}
  spec.homepage      = 'https://github.com/deanpapastrat/grape_url_validator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'grape', '>= 0.12.0'
end
