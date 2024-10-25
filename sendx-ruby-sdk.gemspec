# -*- encoding: utf-8 -*-

=begin
#SendX REST API

## Introduction SendX is an email marketing product. It helps you convert website visitors to customers, send them promotional emails, engage with them using drip sequences and craft custom journeys using powerful but simple automations. The SendX API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs. The SendX Rest API doesn’t support bulk updates. You can work on only one object per request. <br> 

The version of the OpenAPI document: 1.0.1
Contact: support@sendx.io
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "sendx-ruby-sdk/version"

Gem::Specification.new do |s|
  s.name        = "sendx-ruby-sdk"
  s.version     = SendX::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["SendX"]
  s.email       = ["support@sendx.io"]
  s.homepage    = "https://github.com/sendx/sendx-ruby-sdk"
  s.summary     = "SendX Ruby API"
  s.description = "SendX is an email marketing product. It helps you convert website visitors to customers, send them promotional emails, engage with them using drip sequences and craft custom journeys using powerful but simple automations."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = Dir['lib/**/*', 'README.md', 'LICENSE.txt']
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
