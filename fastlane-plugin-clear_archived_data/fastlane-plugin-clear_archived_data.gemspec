# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/clear_archived_data/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-clear_archived_data'
  spec.version       = Fastlane::ClearArchivedData::VERSION
  spec.author        = 'Onur Yıldırım'
  spec.email         = 'yildirimpost@gmail.com'

  spec.summary       = 'Clears xcode archive folder'
  spec.homepage      = "https://github.com/yildirmonur/fastlane-plugin-clear_archived_data"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency('pry')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rubocop', '0.49.1')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('fastlane', '>= 2.174.0')
end
