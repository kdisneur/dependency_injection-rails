$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'dependency_injection_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'dependency_injection-rails'
  spec.version       = DependencyInjectionRails::VERSION
  spec.summary       = 'Dependency Injection system for Rails'
  spec.description   = 'A Rails wrapper for a fully customizable Dependency injection system'
  spec.homepage      = 'https://github.com/kdisneur/dependency_injection-rails'
  spec.license       = 'MIT'
  spec.authors       = ['Kevin Disneur']
  spec.email         = 'kevin@koboyz.org'
  spec.files         = `git ls-files`.split($/)
  spec.require_paths = %w(lib)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_dependency('rails')
  spec.add_dependency('dependency_injection', '~> 0.4.3')
end
