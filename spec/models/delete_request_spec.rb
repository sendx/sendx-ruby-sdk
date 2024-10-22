=begin
#SendX REST API

## Introduction SendX is an email marketing product. It helps you convert website visitors to customers, send them promotional emails, engage with them using drip sequences and craft custom journeys using powerful but simple automations. The SendX API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs. The SendX Rest API doesn’t support bulk updates. You can work on only one object per request. <br> 

The version of the OpenAPI document: 1.0.1
Contact: support@sendx.io
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SendX::DeleteRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SendX::DeleteRequest do
  let(:instance) { SendX::DeleteRequest.new }

  describe 'test an instance of DeleteRequest' do
    it 'should create an instance of DeleteRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(SendX::DeleteRequest)
    end
  end

  describe 'test attribute "delete_contacts"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end