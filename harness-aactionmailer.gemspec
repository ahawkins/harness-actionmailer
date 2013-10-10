# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'harness/action_mailer/version'

Gem::Specification.new do |spec|
  spec.name          = "harness-actionmailer"
  spec.version       = Harness::ActionMailer::VERSION
  spec.authors       = ["ahawkins"]
  spec.email         = ["adam@hawkins.io"]
  spec.description   = %q{Log ActionMailer internal performance metrics with Harness}
  spec.summary       = %q{}
  spec.homepage      = "http://github.com/ahawkins/harness-actionmailer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "harness"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
