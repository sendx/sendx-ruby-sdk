# SendX::PostApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_post**](PostApi.md#create_post) | **POST** /post | Create blog post |
| [**delete_post**](PostApi.md#delete_post) | **DELETE** /post/{identifier} | Delete post |
| [**get_all_posts**](PostApi.md#get_all_posts) | **GET** /post | Get all posts |
| [**get_post**](PostApi.md#get_post) | **GET** /post/{identifier} | Get post by ID |
| [**update_post**](PostApi.md#update_post) | **PUT** /post/{identifier} | Update post |


## create_post

> <RestRPost> create_post(rest_e_post)

Create blog post

Creates a new blog post. 

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

api_instance = SendX::PostApi.new
rest_e_post = SendX::RestEPost.new({name: 'Summer Product Launch', post_title: 'Introducing Our New Summer Collection'}) # RestEPost | 

begin
  # Create blog post
  result = api_instance.create_post(rest_e_post)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostApi->create_post: #{e}"
end
```

#### Using the create_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPost>, Integer, Hash)> create_post_with_http_info(rest_e_post)

```ruby
begin
  # Create blog post
  data, status_code, headers = api_instance.create_post_with_http_info(rest_e_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPost>
rescue SendX::ApiError => e
  puts "Error when calling PostApi->create_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_post** | [**RestEPost**](RestEPost.md) |  |  |

### Return type

[**RestRPost**](RestRPost.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_post

> <MessageResponse> delete_post(identifier)

Delete post

Soft deletes a blog post.  **🎯 Key Features:** - Soft delete - Preserve data - Remove from listings 

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

api_instance = SendX::PostApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Delete post
  result = api_instance.delete_post(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostApi->delete_post: #{e}"
end
```

#### Using the delete_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_post_with_http_info(identifier)

```ruby
begin
  # Delete post
  data, status_code, headers = api_instance.delete_post_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue SendX::ApiError => e
  puts "Error when calling PostApi->delete_post_with_http_info: #{e}"
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


## get_all_posts

> <Array<RestRPost>> get_all_posts(opts)

Get all posts

Retrieves all blog posts with pagination.  **🎯 Key Features:** - Filter by status - Search functionality - Sort options - Include metadata 

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

api_instance = SendX::PostApi.new
opts = {
  offset: 56, # Integer | Number of posts to skip
  limit: 56 # Integer | Maximum number of posts to return
}

begin
  # Get all posts
  result = api_instance.get_all_posts(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostApi->get_all_posts: #{e}"
end
```

#### Using the get_all_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRPost>>, Integer, Hash)> get_all_posts_with_http_info(opts)

```ruby
begin
  # Get all posts
  data, status_code, headers = api_instance.get_all_posts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRPost>>
rescue SendX::ApiError => e
  puts "Error when calling PostApi->get_all_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of posts to skip | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of posts to return | [optional][default to 10] |

### Return type

[**Array&lt;RestRPost&gt;**](RestRPost.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_post

> <RestRPost> get_post(identifier)

Get post by ID

Retrieves a specific blog post.  **🎯 Key Features:** - Full post content - SEO metadata - Related posts - Engagement metrics 

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

api_instance = SendX::PostApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Get post by ID
  result = api_instance.get_post(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostApi->get_post: #{e}"
end
```

#### Using the get_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPost>, Integer, Hash)> get_post_with_http_info(identifier)

```ruby
begin
  # Get post by ID
  data, status_code, headers = api_instance.get_post_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPost>
rescue SendX::ApiError => e
  puts "Error when calling PostApi->get_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**RestRPost**](RestRPost.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_post

> <RestRPost> update_post(rest_e_post, identifier)

Update post

Updates an existing blog post.  **🎯 Key Features:** - Edit content - Update metadata - Change status - Modify tags/categories 

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

api_instance = SendX::PostApi.new
rest_e_post = SendX::RestEPost.new({name: 'Summer Product Launch', post_title: 'Introducing Our New Summer Collection'}) # RestEPost | 
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Update post
  result = api_instance.update_post(rest_e_post, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling PostApi->update_post: #{e}"
end
```

#### Using the update_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRPost>, Integer, Hash)> update_post_with_http_info(rest_e_post, identifier)

```ruby
begin
  # Update post
  data, status_code, headers = api_instance.update_post_with_http_info(rest_e_post, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRPost>
rescue SendX::ApiError => e
  puts "Error when calling PostApi->update_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_post** | [**RestEPost**](RestEPost.md) |  |  |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**RestRPost**](RestRPost.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

