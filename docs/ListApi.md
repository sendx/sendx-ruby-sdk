# SendX::ListApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_list**](ListApi.md#create_list) | **POST** /list | Create list |
| [**delete_list**](ListApi.md#delete_list) | **DELETE** /list/{identifier} | Delete list |
| [**get_all_lists**](ListApi.md#get_all_lists) | **GET** /list | Get all lists |
| [**get_list**](ListApi.md#get_list) | **GET** /list/{identifier} | Get list by ID |
| [**update_list**](ListApi.md#update_list) | **PUT** /list/{identifier} | Update list |


## create_list

> <RestRList> create_list(rest_e_list)

Create list

Creates a new contact list. 

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

api_instance = SendX::ListApi.new
rest_e_list = SendX::RestEList.new({name: 'Newsletter Subscribers'}) # RestEList | 

begin
  # Create list
  result = api_instance.create_list(rest_e_list)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRList>, Integer, Hash)> create_list_with_http_info(rest_e_list)

```ruby
begin
  # Create list
  data, status_code, headers = api_instance.create_list_with_http_info(rest_e_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRList>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_list** | [**RestEList**](RestEList.md) |  |  |

### Return type

[**RestRList**](RestRList.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> <DeleteResponse> delete_list(identifier)

Delete list

Deletes a list. 

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

api_instance = SendX::ListApi.new
identifier = 'identifier_example' # String | List identifier to delete

begin
  # Delete list
  result = api_instance.delete_list(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_list_with_http_info(identifier)

```ruby
begin
  # Delete list
  data, status_code, headers = api_instance.delete_list_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->delete_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | List identifier to delete |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lists

> <Array<RestRList>> get_all_lists(opts)

Get all lists

Retrieves all contact lists in your team. 

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

api_instance = SendX::ListApi.new
opts = {
  offset: 56, # Integer | Number of records to skip for pagination
  limit: 56, # Integer | Maximum number of lists to return (max: 500)
  search: 'search_example' # String | Search lists by name
}

begin
  # Get all lists
  result = api_instance.get_all_lists(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_all_lists: #{e}"
end
```

#### Using the get_all_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRList>>, Integer, Hash)> get_all_lists_with_http_info(opts)

```ruby
begin
  # Get all lists
  data, status_code, headers = api_instance.get_all_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRList>>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_all_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of records to skip for pagination | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of lists to return (max: 500) | [optional][default to 10] |
| **search** | **String** | Search lists by name | [optional] |

### Return type

[**Array&lt;RestRList&gt;**](RestRList.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_list

> <RestRList> get_list(identifier)

Get list by ID

Retrieves detailed information about a specific list. 

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

api_instance = SendX::ListApi.new
identifier = 'identifier_example' # String | List identifier - `list_OcuxJHdiAvujmwQVJfd3ss` 

begin
  # Get list by ID
  result = api_instance.get_list(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_list: #{e}"
end
```

#### Using the get_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRList>, Integer, Hash)> get_list_with_http_info(identifier)

```ruby
begin
  # Get list by ID
  data, status_code, headers = api_instance.get_list_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRList>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | List identifier - &#x60;list_OcuxJHdiAvujmwQVJfd3ss&#x60;  |  |

### Return type

[**RestRList**](RestRList.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_list

> <RestRList> update_list(rest_e_list, identifier)

Update list

Updates an existing list's settings. 

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

api_instance = SendX::ListApi.new
rest_e_list = SendX::RestEList.new({name: 'Newsletter Subscribers'}) # RestEList | 
identifier = 'identifier_example' # String | List identifier to update

begin
  # Update list
  result = api_instance.update_list(rest_e_list, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRList>, Integer, Hash)> update_list_with_http_info(rest_e_list, identifier)

```ruby
begin
  # Update list
  data, status_code, headers = api_instance.update_list_with_http_info(rest_e_list, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRList>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->update_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_list** | [**RestEList**](RestEList.md) |  |  |
| **identifier** | **String** | List identifier to update |  |

### Return type

[**RestRList**](RestRList.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

