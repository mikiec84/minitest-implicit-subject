# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

VERSION = '1.4.0'

Gem::Specification.new do |spec|
  spec.name          = 'minitest-implicit-subject'
  spec.version       = VERSION
  spec.authors       = ['Anton Lindqvist']
  spec.email         = ['anton@qvister.se']
  spec.description   = 'Implicit declaration of the test subject.'
  spec.summary       = 'Implicitly define the test subject as any non string argument pass to a describe block.'
  spec.homepage      = 'http://github.com/mptre/minitest-implicit-subject'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.test_files    = Dir['spec/**/*_spec.rb']
  spec.require_paths = ['lib']

  spec.add_dependency 'minitest'

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
