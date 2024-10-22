# SendX::TagsApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag**](TagsApi.md#create_tag) | **POST** /tag | Create a Tag |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /tag/{tagId} | Delete a Tag |
| [**get_all_tags**](TagsApi.md#get_all_tags) | **GET** /tag | Get All Tags |
| [**get_tag_by_id**](TagsApi.md#get_tag_by_id) | **GET** /tag/{tagId} | Get a Tag by ID |
| [**update_tag**](TagsApi.md#update_tag) | **PUT** /tag/{tagId} | Update a Tag |


## create_tag

> <CreateResponse> create_tag(tag_request)

Create a Tag

Create a new tag for the account

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = SendX::TagsApi.new
tag_request = SendX::TagRequest.new # TagRequest | The tag content

begin
  # Create a Tag
  result = api_instance.create_tag(tag_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResponse>, Integer, Hash)> create_tag_with_http_info(tag_request)

```ruby
begin
  # Create a Tag
  data, status_code, headers = api_instance.create_tag_with_http_info(tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResponse>
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_request** | [**TagRequest**](TagRequest.md) | The tag content |  |

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> <DeleteResponse> delete_tag(tag_id)

Delete a Tag

Delete an existing tag by ID

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = SendX::TagsApi.new
tag_id = 'tag_id_example' # String | ID of the tag to delete

begin
  # Delete a Tag
  result = api_instance.delete_tag(tag_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_tag_with_http_info(tag_id)

```ruby
begin
  # Delete a Tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | ID of the tag to delete |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_tags

> <Array<Tag>> get_all_tags(opts)

Get All Tags

Retrieve all tags for the account with optional pagination and search filters

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = SendX::TagsApi.new
opts = {
  offset: 56, # Integer | Offset for pagination
  limit: 56, # Integer | Limit the number of results
  search: 'search_example' # String | Search term to filter tags
}

begin
  # Get All Tags
  result = api_instance.get_all_tags(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->get_all_tags: #{e}"
end
```

#### Using the get_all_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Tag>>, Integer, Hash)> get_all_tags_with_http_info(opts)

```ruby
begin
  # Get All Tags
  data, status_code, headers = api_instance.get_all_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Tag>>
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->get_all_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Offset for pagination | [optional] |
| **limit** | **Integer** | Limit the number of results | [optional] |
| **search** | **String** | Search term to filter tags | [optional] |

### Return type

[**Array&lt;Tag&gt;**](Tag.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_by_id

> <Tag> get_tag_by_id(tag_id)

Get a Tag by ID

Retrieve a tag based on the provided tag ID

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = SendX::TagsApi.new
tag_id = 'tag_id_example' # String | ID of the tag you want to fetch

begin
  # Get a Tag by ID
  result = api_instance.get_tag_by_id(tag_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->get_tag_by_id: #{e}"
end
```

#### Using the get_tag_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> get_tag_by_id_with_http_info(tag_id)

```ruby
begin
  # Get a Tag by ID
  data, status_code, headers = api_instance.get_tag_by_id_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->get_tag_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | ID of the tag you want to fetch |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/plain


## update_tag

> <Response> update_tag(tag_request, tag_id)

Update a Tag

Update an existing tag

### Examples

```ruby
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = SendX::TagsApi.new
tag_request = SendX::TagRequest.new # TagRequest | The tag content
tag_id = 'tag_id_example' # String | ID of the tag to update

begin
  # Update a Tag
  result = api_instance.update_tag(tag_request, tag_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Response>, Integer, Hash)> update_tag_with_http_info(tag_request, tag_id)

```ruby
begin
  # Update a Tag
  data, status_code, headers = api_instance.update_tag_with_http_info(tag_request, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Response>
rescue SendX::ApiError => e
  puts "Error when calling TagsApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_request** | [**TagRequest**](TagRequest.md) | The tag content |  |
| **tag_id** | **String** | ID of the tag to update |  |

### Return type

[**Response**](Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

