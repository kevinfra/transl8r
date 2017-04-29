# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transl8r/version'

Gem::Specification.new do |spec|
  spec.name          = 'transl8r'
  spec.version       = Transl8r::VERSION
  spec.date          = '2017-04-29'
  spec.authors       = ['Kevin Frachtenberg']
  spec.email         = ['kevinfra94@gmail.com']

  spec.summary       = 'Internationalization for ruby'
  spec.description   = 'Internationalization for ruby'
  spec.homepage      = 'http://github.com/kevinfra/transl8r'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("$/")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.0'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest', '~> 5.9'
  spec.add_development_dependency 'pry-nav'
end
