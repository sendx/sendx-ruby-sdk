# SendX::PostCategoryApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_post_category**](PostCategoryApi.md#create_post_category) | **POST** /post/category | Create post category |
| [**delete_post_category**](PostCategoryApi.md#delete_post_category) | **DELETE** /post/category/{identifier} | Delete post category |
| [**get_all_post_categories**](PostCategoryApi.md#get_all_post_categories) | **GET** /post/category | Get all post categories |
| [**get_post_category**](PostCategoryApi.md#get_post_category) | **GET** /post/category/{identifier} | Get post category by ID |
| [**update_post_category**](PostCategoryApi.md#update_post_category) | **PUT** /post/category/{identifier} | Update post category |


## create_post_category

> <RestRPostCategory> create_post_category(rest_e_post_category)

Create post category

Creates a new category for organizing blog posts. 

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

api_instance = SendX::PostCategoryApi.new
rest_e_post_category = SendX::RestEPostCategory.new({name: 'Product Updates'}) # RestEPostCategory | 

begin
  # Create post category
  result = api_instance.create_post_category(rest_e_post_category)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->create_post_category: #{e}"
end
```

#### Using the create_post_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPostCategory>, Integer, Hash)> create_post_category_with_http_info(rest_e_post_category)

```ruby
begin
  # Create post category
  data, status_code, headers = api_instance.create_post_category_with_http_info(rest_e_post_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPostCategory>
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->create_post_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_post_category** | [**RestEPostCategory**](RestEPostCategory.md) |  |  |

### Return type

[**RestRPostCategory**](RestRPostCategory.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_post_category

> <MessageResponse> delete_post_category(identifier)

Delete post category

Soft deletes a post category. 

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

api_instance = SendX::PostCategoryApi.new
identifier = 'post_category_YzS1wOU20yw87UUHKxMzwn' # String | The unique post category identifier to retrieve. - `post_category_YzS1wOU20yw87UUHKxMzwn` 

begin
  # Delete post category
  result = api_instance.delete_post_category(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->delete_post_category: #{e}"
end
```

#### Using the delete_post_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_post_category_with_http_info(identifier)

```ruby
begin
  # Delete post category
  data, status_code, headers = api_instance.delete_post_category_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->delete_post_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique post category identifier to retrieve. - &#x60;post_category_YzS1wOU20yw87UUHKxMzwn&#x60;  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_post_categories

> <Array<RestRPostCategory>> get_all_post_categories

Get all post categories

Retrieves all blog post categories. 

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

api_instance = SendX::PostCategoryApi.new

begin
  # Get all post categories
  result = api_instance.get_all_post_categories
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->get_all_post_categories: #{e}"
end
```

#### Using the get_all_post_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRPostCategory>>, Integer, Hash)> get_all_post_categories_with_http_info

```ruby
begin
  # Get all post categories
  data, status_code, headers = api_instance.get_all_post_categories_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRPostCategory>>
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->get_all_post_categories_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;RestRPostCategory&gt;**](RestRPostCategory.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_post_category

> <RestRPostCategory> get_post_category(identifier)

Get post category by ID

Retrieves a specific post category. 

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

api_instance = SendX::PostCategoryApi.new
identifier = 'post_category_YzS1wOU20yw87UUHKxMzwn' # String | The unique post category identifier to retrieve. - `post_category_YzS1wOU20yw87UUHKxMzwn` 

begin
  # Get post category by ID
  result = api_instance.get_post_category(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->get_post_category: #{e}"
end
```

#### Using the get_post_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPostCategory>, Integer, Hash)> get_post_category_with_http_info(identifier)

```ruby
begin
  # Get post category by ID
  data, status_code, headers = api_instance.get_post_category_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPostCategory>
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->get_post_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique post category identifier to retrieve. - &#x60;post_category_YzS1wOU20yw87UUHKxMzwn&#x60;  |  |

### Return type

[**RestRPostCategory**](RestRPostCategory.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_post_category

> <RestRPostCategory> update_post_category(rest_e_post_category, identifier)

Update post category

Updates a post category. 

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

api_instance = SendX::PostCategoryApi.new
rest_e_post_category = SendX::RestEPostCategory.new({name: 'Product Updates'}) # RestEPostCategory | 
identifier = 'post_category_YzS1wOU20yw87UUHKxMzwn' # String | The unique post category identifier to retrieve. - `post_category_YzS1wOU20yw87UUHKxMzwn` 

begin
  # Update post category
  result = api_instance.update_post_category(rest_e_post_category, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->update_post_category: #{e}"
end
```

#### Using the update_post_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPostCategory>, Integer, Hash)> update_post_category_with_http_info(rest_e_post_category, identifier)

```ruby
begin
  # Update post category
  data, status_code, headers = api_instance.update_post_category_with_http_info(rest_e_post_category, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPostCategory>
rescue SendX::ApiError => e
  puts "Error when calling PostCategoryApi->update_post_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_post_category** | [**RestEPostCategory**](RestEPostCategory.md) |  |  |
| **identifier** | **String** | The unique post category identifier to retrieve. - &#x60;post_category_YzS1wOU20yw87UUHKxMzwn&#x60;  |  |

### Return type

[**RestRPostCategory**](RestRPostCategory.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

