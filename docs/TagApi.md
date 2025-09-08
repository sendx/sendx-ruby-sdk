# SendX::TagApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag**](TagApi.md#create_tag) | **POST** /tag | Create tag |
| [**delete_tag**](TagApi.md#delete_tag) | **DELETE** /tag/{identifier} | Delete tag |
| [**get_all_tags**](TagApi.md#get_all_tags) | **GET** /tag | Get all tags |
| [**get_tag**](TagApi.md#get_tag) | **GET** /tag/{identifier} | Get tag by ID |
| [**update_tag**](TagApi.md#update_tag) | **PUT** /tag/{identifier} | Update tag |


## create_tag

> <RestRTag> create_tag(rest_e_tag)

Create tag

Creates a new tag for contact categorization. 

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

api_instance = SendX::TagApi.new
rest_e_tag = SendX::RestETag.new({name: 'VIP Customer'}) # RestETag | 

begin
  # Create tag
  result = api_instance.create_tag(rest_e_tag)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRTag>, Integer, Hash)> create_tag_with_http_info(rest_e_tag)

```ruby
begin
  # Create tag
  data, status_code, headers = api_instance.create_tag_with_http_info(rest_e_tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRTag>
rescue SendX::ApiError => e
  puts "Error when calling TagApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_tag** | [**RestETag**](RestETag.md) |  |  |

### Return type

[**RestRTag**](RestRTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> <DeleteResponse> delete_tag(identifier)

Delete tag

Deletes a tag from the system. 

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

api_instance = SendX::TagApi.new
identifier = 'identifier_example' # String | Tag identifier to update

begin
  # Delete tag
  result = api_instance.delete_tag(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_tag_with_http_info(identifier)

```ruby
begin
  # Delete tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling TagApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Tag identifier to update |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_tags

> <Array<RestRTag>> get_all_tags(opts)

Get all tags

Retrieves all tags in your team. 

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

api_instance = SendX::TagApi.new
opts = {
  offset: 56, # Integer | Number of tags to skip
  limit: 56 # Integer | Maximum number of tags to return
}

begin
  # Get all tags
  result = api_instance.get_all_tags(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagApi->get_all_tags: #{e}"
end
```

#### Using the get_all_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRTag>>, Integer, Hash)> get_all_tags_with_http_info(opts)

```ruby
begin
  # Get all tags
  data, status_code, headers = api_instance.get_all_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRTag>>
rescue SendX::ApiError => e
  puts "Error when calling TagApi->get_all_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of tags to skip | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of tags to return | [optional][default to 10] |

### Return type

[**Array&lt;RestRTag&gt;**](RestRTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag

> <RestRTag> get_tag(identifier)

Get tag by ID

Retrieves detailed information about a specific tag. 

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

api_instance = SendX::TagApi.new
identifier = 'identifier_example' # String | Tag identifier to retrieve

begin
  # Get tag by ID
  result = api_instance.get_tag(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagApi->get_tag: #{e}"
end
```

#### Using the get_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRTag>, Integer, Hash)> get_tag_with_http_info(identifier)

```ruby
begin
  # Get tag by ID
  data, status_code, headers = api_instance.get_tag_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRTag>
rescue SendX::ApiError => e
  puts "Error when calling TagApi->get_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Tag identifier to retrieve |  |

### Return type

[**RestRTag**](RestRTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tag

> <RestRTag> update_tag(rest_e_tag, identifier)

Update tag

Updates an existing tag's name. 

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

api_instance = SendX::TagApi.new
rest_e_tag = SendX::RestETag.new({name: 'VIP Customer'}) # RestETag | 
identifier = 'identifier_example' # String | Tag identifier to update

begin
  # Update tag
  result = api_instance.update_tag(rest_e_tag, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRTag>, Integer, Hash)> update_tag_with_http_info(rest_e_tag, identifier)

```ruby
begin
  # Update tag
  data, status_code, headers = api_instance.update_tag_with_http_info(rest_e_tag, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRTag>
rescue SendX::ApiError => e
  puts "Error when calling TagApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_tag** | [**RestETag**](RestETag.md) |  |  |
| **identifier** | **String** | Tag identifier to update |  |

### Return type

[**RestRTag**](RestRTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

