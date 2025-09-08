# SendX::CustomFieldApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_field**](CustomFieldApi.md#create_custom_field) | **POST** /customfield | Create custom field |
| [**delete_custom_field**](CustomFieldApi.md#delete_custom_field) | **DELETE** /customfield/{identifier} | Delete custom field |
| [**get_all_custom_fields**](CustomFieldApi.md#get_all_custom_fields) | **GET** /customfield | Get all custom fields |
| [**get_custom_field**](CustomFieldApi.md#get_custom_field) | **GET** /customfield/{identifier} | Get custom field by ID |
| [**update_custom_field**](CustomFieldApi.md#update_custom_field) | **PUT** /customfield/{identifier} | Update custom field |


## create_custom_field

> <RestRCustomField> create_custom_field(rest_e_custom_field)

Create custom field

Creates a new custom field for storing contact data. 

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

api_instance = SendX::CustomFieldApi.new
rest_e_custom_field = SendX::RestECustomField.new({name: 'Account Type', type: 0}) # RestECustomField | 

begin
  # Create custom field
  result = api_instance.create_custom_field(rest_e_custom_field)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->create_custom_field: #{e}"
end
```

#### Using the create_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRCustomField>, Integer, Hash)> create_custom_field_with_http_info(rest_e_custom_field)

```ruby
begin
  # Create custom field
  data, status_code, headers = api_instance.create_custom_field_with_http_info(rest_e_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRCustomField>
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->create_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_custom_field** | [**RestECustomField**](RestECustomField.md) |  |  |

### Return type

[**RestRCustomField**](RestRCustomField.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_field

> <DeleteResponse> delete_custom_field(identifier)

Delete custom field

Deletes a custom field (data is preserved).  **🎯 Key Features:** - Remove unused fields - Data remains on contacts - Clean up field list 

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

api_instance = SendX::CustomFieldApi.new
identifier = 'identifier_example' # String | Custom field identifier to update

begin
  # Delete custom field
  result = api_instance.delete_custom_field(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->delete_custom_field: #{e}"
end
```

#### Using the delete_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_custom_field_with_http_info(identifier)

```ruby
begin
  # Delete custom field
  data, status_code, headers = api_instance.delete_custom_field_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->delete_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Custom field identifier to update |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_custom_fields

> <Array<RestRCustomField>> get_all_custom_fields(opts)

Get all custom fields

Retrieves all custom fields defined for your team. 

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

api_instance = SendX::CustomFieldApi.new
opts = {
  offset: 56, # Integer | Number of fields to skip for pagination
  limit: 56, # Integer | Maximum number of fields to return
  search: 'search_example' # String | Search custom fields by name (case-insensitive partial matching).  **Examples:** - `points` - Finds \"Loyalty points\", \"Reward points\" 
}

begin
  # Get all custom fields
  result = api_instance.get_all_custom_fields(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->get_all_custom_fields: #{e}"
end
```

#### Using the get_all_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRCustomField>>, Integer, Hash)> get_all_custom_fields_with_http_info(opts)

```ruby
begin
  # Get all custom fields
  data, status_code, headers = api_instance.get_all_custom_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRCustomField>>
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->get_all_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of fields to skip for pagination | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of fields to return | [optional][default to 10] |
| **search** | **String** | Search custom fields by name (case-insensitive partial matching).  **Examples:** - &#x60;points&#x60; - Finds \&quot;Loyalty points\&quot;, \&quot;Reward points\&quot;  | [optional] |

### Return type

[**Array&lt;RestRCustomField&gt;**](RestRCustomField.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_field

> <RestRCustomField> get_custom_field(identifier)

Get custom field by ID

Retrieves details about a specific custom field. 

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

api_instance = SendX::CustomFieldApi.new
identifier = 'identifier_example' # String | Custom field identifier to update

begin
  # Get custom field by ID
  result = api_instance.get_custom_field(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->get_custom_field: #{e}"
end
```

#### Using the get_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRCustomField>, Integer, Hash)> get_custom_field_with_http_info(identifier)

```ruby
begin
  # Get custom field by ID
  data, status_code, headers = api_instance.get_custom_field_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRCustomField>
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->get_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Custom field identifier to update |  |

### Return type

[**RestRCustomField**](RestRCustomField.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_custom_field

> <RestRCustomField> update_custom_field(rest_e_custom_field, identifier)

Update custom field

Updates a custom field definition. 

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

api_instance = SendX::CustomFieldApi.new
rest_e_custom_field = SendX::RestECustomField.new({name: 'Account Type', type: 0}) # RestECustomField | 
identifier = 'identifier_example' # String | Custom field identifier to update

begin
  # Update custom field
  result = api_instance.update_custom_field(rest_e_custom_field, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->update_custom_field: #{e}"
end
```

#### Using the update_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRCustomField>, Integer, Hash)> update_custom_field_with_http_info(rest_e_custom_field, identifier)

```ruby
begin
  # Update custom field
  data, status_code, headers = api_instance.update_custom_field_with_http_info(rest_e_custom_field, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRCustomField>
rescue SendX::ApiError => e
  puts "Error when calling CustomFieldApi->update_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_custom_field** | [**RestECustomField**](RestECustomField.md) |  |  |
| **identifier** | **String** | Custom field identifier to update |  |

### Return type

[**RestRCustomField**](RestRCustomField.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

