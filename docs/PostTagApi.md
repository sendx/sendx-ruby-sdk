# SendX::PostTagApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_post_tag**](PostTagApi.md#create_post_tag) | **POST** /post/tag | Create post tag |
| [**delete_post_tag**](PostTagApi.md#delete_post_tag) | **DELETE** /post/tag/{identifier} | Delete post tag |
| [**get_all_post_tags**](PostTagApi.md#get_all_post_tags) | **GET** /post/tag | Get all post tags |
| [**get_post_tag**](PostTagApi.md#get_post_tag) | **GET** /post/tag/{identifier} | Get post tag by ID |
| [**update_post_tag**](PostTagApi.md#update_post_tag) | **PUT** /post/tag/{identifier} | Update post tag |


## create_post_tag

> <RestRPostTag> create_post_tag(rest_e_post_tag)

Create post tag

Creates a new tag for blog posts. 

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

api_instance = SendX::PostTagApi.new
rest_e_post_tag = SendX::RestEPostTag.new({name: 'Summer Sale'}) # RestEPostTag | 

begin
  # Create post tag
  result = api_instance.create_post_tag(rest_e_post_tag)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->create_post_tag: #{e}"
end
```

#### Using the create_post_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPostTag>, Integer, Hash)> create_post_tag_with_http_info(rest_e_post_tag)

```ruby
begin
  # Create post tag
  data, status_code, headers = api_instance.create_post_tag_with_http_info(rest_e_post_tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPostTag>
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->create_post_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_post_tag** | [**RestEPostTag**](RestEPostTag.md) |  |  |

### Return type

[**RestRPostTag**](RestRPostTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_post_tag

> <MessageResponse> delete_post_tag(identifier)

Delete post tag

Soft deletes a post tag. 

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

api_instance = SendX::PostTagApi.new
identifier = 'post_tag_leBDiFdrUnRmRz4nfopSrv' # String | The unique post tag identifier to retrieve. - `post_tag_leBDiFdrUnRmRz4nfopSrv` 

begin
  # Delete post tag
  result = api_instance.delete_post_tag(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->delete_post_tag: #{e}"
end
```

#### Using the delete_post_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_post_tag_with_http_info(identifier)

```ruby
begin
  # Delete post tag
  data, status_code, headers = api_instance.delete_post_tag_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->delete_post_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique post tag identifier to retrieve. - &#x60;post_tag_leBDiFdrUnRmRz4nfopSrv&#x60;  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_post_tags

> <Array<RestRPostTag>> get_all_post_tags

Get all post tags

Retrieves all blog post tags. 

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

api_instance = SendX::PostTagApi.new

begin
  # Get all post tags
  result = api_instance.get_all_post_tags
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->get_all_post_tags: #{e}"
end
```

#### Using the get_all_post_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRPostTag>>, Integer, Hash)> get_all_post_tags_with_http_info

```ruby
begin
  # Get all post tags
  data, status_code, headers = api_instance.get_all_post_tags_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRPostTag>>
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->get_all_post_tags_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;RestRPostTag&gt;**](RestRPostTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_post_tag

> <RestRPostTag> get_post_tag(identifier)

Get post tag by ID

Retrieves a specific post tag. 

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

api_instance = SendX::PostTagApi.new
identifier = 'post_tag_leBDiFdrUnRmRz4nfopSrv' # String | The unique post tag identifier to retrieve. - `post_tag_leBDiFdrUnRmRz4nfopSrv` 

begin
  # Get post tag by ID
  result = api_instance.get_post_tag(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->get_post_tag: #{e}"
end
```

#### Using the get_post_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPostTag>, Integer, Hash)> get_post_tag_with_http_info(identifier)

```ruby
begin
  # Get post tag by ID
  data, status_code, headers = api_instance.get_post_tag_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPostTag>
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->get_post_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique post tag identifier to retrieve. - &#x60;post_tag_leBDiFdrUnRmRz4nfopSrv&#x60;  |  |

### Return type

[**RestRPostTag**](RestRPostTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_post_tag

> <RestRPostTag> update_post_tag(rest_e_post_tag, identifier)

Update post tag

Updates a post tag. 

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

api_instance = SendX::PostTagApi.new
rest_e_post_tag = SendX::RestEPostTag.new({name: 'Summer Sale'}) # RestEPostTag | 
identifier = 'post_tag_leBDiFdrUnRmRz4nfopSrv' # String | The unique post tag identifier to retrieve. - `post_tag_leBDiFdrUnRmRz4nfopSrv` 

begin
  # Update post tag
  result = api_instance.update_post_tag(rest_e_post_tag, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->update_post_tag: #{e}"
end
```

#### Using the update_post_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPostTag>, Integer, Hash)> update_post_tag_with_http_info(rest_e_post_tag, identifier)

```ruby
begin
  # Update post tag
  data, status_code, headers = api_instance.update_post_tag_with_http_info(rest_e_post_tag, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPostTag>
rescue SendX::ApiError => e
  puts "Error when calling PostTagApi->update_post_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_post_tag** | [**RestEPostTag**](RestEPostTag.md) |  |  |
| **identifier** | **String** | The unique post tag identifier to retrieve. - &#x60;post_tag_leBDiFdrUnRmRz4nfopSrv&#x60;  |  |

### Return type

[**RestRPostTag**](RestRPostTag.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

