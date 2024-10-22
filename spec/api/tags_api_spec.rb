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

# Unit tests for SendX::TagsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @api_instance = SendX::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instance of TagsApi' do
      expect(@api_instance).to be_instance_of(SendX::TagsApi)
    end
  end

  # unit tests for create_tag
  # Create a Tag
  # Create a new tag for the account
  # @param tag_request The tag content
  # @param [Hash] opts the optional parameters
  # @return [CreateResponse]
  describe 'create_tag test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_tag
  # Delete a Tag
  # Delete an existing tag by ID
  # @param tag_id ID of the tag to delete
  # @param [Hash] opts the optional parameters
  # @return [DeleteResponse]
  describe 'delete_tag test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_tags
  # Get All Tags
  # Retrieve all tags for the account with optional pagination and search filters
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Offset for pagination
  # @option opts [Integer] :limit Limit the number of results
  # @option opts [String] :search Search term to filter tags
  # @return [Array<Tag>]
  describe 'get_all_tags test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_tag_by_id
  # Get a Tag by ID
  # Retrieve a tag based on the provided tag ID
  # @param tag_id ID of the tag you want to fetch
  # @param [Hash] opts the optional parameters
  # @return [Tag]
  describe 'get_tag_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_tag
  # Update a Tag
  # Update an existing tag
  # @param tag_request The tag content
  # @param tag_id ID of the tag to update
  # @param [Hash] opts the optional parameters
  # @return [Response]
  describe 'update_tag test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
