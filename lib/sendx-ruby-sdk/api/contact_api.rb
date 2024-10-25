=begin
#SendX REST API

## Introduction SendX is an email marketing product. It helps you convert website visitors to customers, send them promotional emails, engage with them using drip sequences and craft custom journeys using powerful but simple automations. The SendX API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs. The SendX Rest API doesn’t support bulk updates. You can work on only one object per request. <br> 

The version of the OpenAPI document: 1.0.1
Contact: support@sendx.io
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'cgi'

module SendX
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a contact
    # Create Contact with given data
    # @param contact_request [ContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Response]
    def create_contact(contact_request, opts = {})
      data, _status_code, _headers = create_contact_with_http_info(contact_request, opts)
      data
    end

    # Create a contact
    # Create Contact with given data
    # @param contact_request [ContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response, Integer, Hash)>] Response data, response status code and response headers
    def create_contact_with_http_info(contact_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.create_contact ...'
      end
      # verify the required parameter 'contact_request' is set
      if @api_client.config.client_side_validation && contact_request.nil?
        fail ArgumentError, "Missing the required parameter 'contact_request' when calling ContactApi.create_contact"
      end
      # resource path
      local_var_path = '/contact'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.create_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Contact
    # Deletes Contact
    # @param identifier [String] The Contact ID/ Email to delete
    # @param [Hash] opts the optional parameters
    # @return [Response]
    def delete_contact(identifier, opts = {})
      data, _status_code, _headers = delete_contact_with_http_info(identifier, opts)
      data
    end

    # Delete Contact
    # Deletes Contact
    # @param identifier [String] The Contact ID/ Email to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response, Integer, Hash)>] Response data, response status code and response headers
    def delete_contact_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.delete_contact ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.delete_contact"
      end
      # resource path
      local_var_path = '/contact/{identifier}'.sub('{' + 'identifier' + '}', CGI.escape(identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.delete_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Contacts
    # Find all contacts with optional filters
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offset for pagination (default to 0)
    # @option opts [Integer] :limit Limit for pagination (default to 10)
    # @option opts [String] :contact_type Filter contacts by type
    # @option opts [String] :search Search term to filter contacts
    # @return [Array<Contact>]
    def get_all_contacts(opts = {})
      data, _status_code, _headers = get_all_contacts_with_http_info(opts)
      data
    end

    # Get All Contacts
    # Find all contacts with optional filters
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offset for pagination (default to 0)
    # @option opts [Integer] :limit Limit for pagination (default to 10)
    # @option opts [String] :contact_type Filter contacts by type
    # @option opts [String] :search Search term to filter contacts
    # @return [Array<(Array<Contact>, Integer, Hash)>] Array<Contact> data, response status code and response headers
    def get_all_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_all_contacts ...'
      end
      allowable_values = ["all", "unsubscribed", "bounced", "markedspam"]
      if @api_client.config.client_side_validation && opts[:'contact_type'] && !allowable_values.include?(opts[:'contact_type'])
        fail ArgumentError, "invalid value for \"contact_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/contact'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'contactType'] = opts[:'contact_type'] if !opts[:'contact_type'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Contact>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.get_all_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_all_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Contact by Identifier
    # Retrieve a specific contact by its identifier.
    # @param identifier [String] The ID or Email of the contact to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def get_contact_by_id(identifier, opts = {})
      data, _status_code, _headers = get_contact_by_id_with_http_info(identifier, opts)
      data
    end

    # Get Contact by Identifier
    # Retrieve a specific contact by its identifier.
    # @param identifier [String] The ID or Email of the contact to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Integer, Hash)>] Contact data, response status code and response headers
    def get_contact_by_id_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contact_by_id ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.get_contact_by_id"
      end
      # resource path
      local_var_path = '/contact/{identifier}'.sub('{' + 'identifier' + '}', CGI.escape(identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Contact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.get_contact_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unsubscribe Contact
    # Unsubscribe a globally existing contact
    # @param identifier [String] The Contact ID or email to unsubscribe
    # @param [Hash] opts the optional parameters
    # @return [Response]
    def unsubscribe_contact(identifier, opts = {})
      data, _status_code, _headers = unsubscribe_contact_with_http_info(identifier, opts)
      data
    end

    # Unsubscribe Contact
    # Unsubscribe a globally existing contact
    # @param identifier [String] The Contact ID or email to unsubscribe
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response, Integer, Hash)>] Response data, response status code and response headers
    def unsubscribe_contact_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.unsubscribe_contact ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.unsubscribe_contact"
      end
      # resource path
      local_var_path = '/contact/unsubscribe/{identifier}'.sub('{' + 'identifier' + '}', CGI.escape(identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.unsubscribe_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#unsubscribe_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Contact
    # Update Contact with given data
    # @param contact_request [ContactRequest] 
    # @param identifier [String] The ID or email of the Contact to update
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def update_contact(contact_request, identifier, opts = {})
      data, _status_code, _headers = update_contact_with_http_info(contact_request, identifier, opts)
      data
    end

    # Update Contact
    # Update Contact with given data
    # @param contact_request [ContactRequest] 
    # @param identifier [String] The ID or email of the Contact to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Integer, Hash)>] Contact data, response status code and response headers
    def update_contact_with_http_info(contact_request, identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.update_contact ...'
      end
      # verify the required parameter 'contact_request' is set
      if @api_client.config.client_side_validation && contact_request.nil?
        fail ArgumentError, "Missing the required parameter 'contact_request' when calling ContactApi.update_contact"
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.update_contact"
      end
      # resource path
      local_var_path = '/contact/{identifier}'.sub('{' + 'identifier' + '}', CGI.escape(identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Contact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.update_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#update_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
