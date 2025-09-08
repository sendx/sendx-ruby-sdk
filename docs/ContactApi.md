# SendX::ContactApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact**](ContactApi.md#create_contact) | **POST** /contact | Create a new contact |
| [**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /contact/{identifier} | Delete contact |
| [**get_all_contacts**](ContactApi.md#get_all_contacts) | **GET** /contact | Get all contacts |
| [**get_contact**](ContactApi.md#get_contact) | **GET** /contact/{identifier} | Get contact by ID |
| [**unsubscribe_contact**](ContactApi.md#unsubscribe_contact) | **POST** /contact/unsubscribe/{identifier} | Unsubscribe contact |
| [**update_contact**](ContactApi.md#update_contact) | **PUT** /contact/{identifier} | Update contact |


## create_contact

> <RestRContact> create_contact(rest_e_contact)

Create a new contact

Creates a new contact in your SendX team with the provided information.  **🎯 Key Features:** - Email validation and duplicate detection - Automatic relationship building with lists and tags - Smart custom field handling  **📋 Business Rules:** - Email is mandatory and must be unique within the team - Last tracked IP is stored for analytics 

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
rest_e_contact = SendX::RestEContact.new({email: 'john.doe@example.com'}) # RestEContact | 

begin
  # Create a new contact
  result = api_instance.create_contact(rest_e_contact)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRContact>, Integer, Hash)> create_contact_with_http_info(rest_e_contact)

```ruby
begin
  # Create a new contact
  data, status_code, headers = api_instance.create_contact_with_http_info(rest_e_contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRContact>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_contact** | [**RestEContact**](RestEContact.md) |  |  |

### Return type

[**RestRContact**](RestRContact.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact

> <DeleteResponse> delete_contact(identifier)

Delete contact

Soft deletes a contact from your team.  **🎯 Key Features:** - Soft delete preserves data - Removes from all lists - Cancels pending campaigns - Maintains historical data 

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Delete contact
  result = api_instance.delete_contact(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->delete_contact: #{e}"
end
```

#### Using the delete_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_contact_with_http_info(identifier)

```ruby
begin
  # Delete contact
  data, status_code, headers = api_instance.delete_contact_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->delete_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_contacts

> <Array<RestRContact>> get_all_contacts(opts)

Get all contacts

Retrieves a paginated list of all contacts in your team with optional filtering capabilities.  **🎯 Key Features:** - Pagination support with offset/limit - Search contacts by name or email - All relationships included (lists, tags, custom fields) - Prefixed IDs for easy integration  **📊 Pagination:** - Default limit: 10 contacts per page - Maximum limit: 100 contacts per page - Use offset for page navigation  **🔍 Search:** - Searches across firstName, lastName, and email fields - Case-insensitive partial matching - Combine with pagination for large datasets 

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
opts = {
  offset: 0, # Integer | Number of records to skip for pagination.  **Examples:** - `0` - First page (default) - `50` - Second page (with limit=50) - `100` - Third page (with limit=50) 
  limit: 10, # Integer | Maximum number of records to return.  **Constraints:** - Minimum: 1 - Maximum: 100 - Default: 10 
  search: 'john' # String | Search term to filter contacts by name or email.  **Search Behavior:** - Searches firstName, lastName, and email fields - Case-insensitive partial matching - Minimum 2 characters for search  **Examples:** - `john` - Finds \"John Doe\", \"johnson@example.com\" - `@company.com` - Finds all emails from company.com - `smith` - Finds \"John Smith\", \"smith@email.com\" 
}

begin
  # Get all contacts
  result = api_instance.get_all_contacts(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_all_contacts: #{e}"
end
```

#### Using the get_all_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRContact>>, Integer, Hash)> get_all_contacts_with_http_info(opts)

```ruby
begin
  # Get all contacts
  data, status_code, headers = api_instance.get_all_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRContact>>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_all_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of records to skip for pagination.  **Examples:** - &#x60;0&#x60; - First page (default) - &#x60;50&#x60; - Second page (with limit&#x3D;50) - &#x60;100&#x60; - Third page (with limit&#x3D;50)  | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of records to return.  **Constraints:** - Minimum: 1 - Maximum: 100 - Default: 10  | [optional][default to 50] |
| **search** | **String** | Search term to filter contacts by name or email.  **Search Behavior:** - Searches firstName, lastName, and email fields - Case-insensitive partial matching - Minimum 2 characters for search  **Examples:** - &#x60;john&#x60; - Finds \&quot;John Doe\&quot;, \&quot;johnson@example.com\&quot; - &#x60;@company.com&#x60; - Finds all emails from company.com - &#x60;smith&#x60; - Finds \&quot;John Smith\&quot;, \&quot;smith@email.com\&quot;  | [optional] |

### Return type

[**Array&lt;RestRContact&gt;**](RestRContact.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact

> <RestRContact> get_contact(identifier)

Get contact by ID

Retrieves detailed information about a specific contact.  **🎯 Key Features:** - Returns complete contact profile - Includes all lists and tags - Shows custom field values - Provides engagement metrics 

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Get contact by ID
  result = api_instance.get_contact(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_contact: #{e}"
end
```

#### Using the get_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRContact>, Integer, Hash)> get_contact_with_http_info(identifier)

```ruby
begin
  # Get contact by ID
  data, status_code, headers = api_instance.get_contact_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRContact>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**RestRContact**](RestRContact.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unsubscribe_contact

> <MessageResponse> unsubscribe_contact(identifier)

Unsubscribe contact

Unsubscribes a contact from all marketing communications.  **🎯 Key Features:** - Marks contact as unsubscribed - Removes from all active campaigns - Maintains unsubscribe history - Complies with anti-spam regulations 

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Unsubscribe contact
  result = api_instance.unsubscribe_contact(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->unsubscribe_contact: #{e}"
end
```

#### Using the unsubscribe_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> unsubscribe_contact_with_http_info(identifier)

```ruby
begin
  # Unsubscribe contact
  data, status_code, headers = api_instance.unsubscribe_contact_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->unsubscribe_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact

> <RestRContact> update_contact(rest_e_contact, identifier)

Update contact

Updates an existing contact's information.  **🎯 Key Features:** - Partial updates supported - Add/remove lists and tags - Update custom fields - Change email address 

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
rest_e_contact = SendX::RestEContact.new({email: 'john.doe@example.com'}) # RestEContact | 
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Update contact
  result = api_instance.update_contact(rest_e_contact, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->update_contact: #{e}"
end
```

#### Using the update_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRContact>, Integer, Hash)> update_contact_with_http_info(rest_e_contact, identifier)

```ruby
begin
  # Update contact
  data, status_code, headers = api_instance.update_contact_with_http_info(rest_e_contact, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRContact>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_contact** | [**RestEContact**](RestEContact.md) |  |  |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**RestRContact**](RestRContact.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

