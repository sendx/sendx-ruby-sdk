# SendX::ListApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_list**](ListApi.md#create_list) | **POST** /list | Create List |
| [**delete_list**](ListApi.md#delete_list) | **DELETE** /list/{listId} | Delete List |
| [**get_all_lists**](ListApi.md#get_all_lists) | **GET** /list | Get All Lists |
| [**get_list_by_id**](ListApi.md#get_list_by_id) | **GET** /list/{listId} | Get List |
| [**update_list**](ListApi.md#update_list) | **PUT** /list/{listId} | Update List |


## create_list

> <CreateResponse> create_list(list_request)

Create List

Create a new list.

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

api_instance = SendX::ListApi.new
list_request = SendX::ListRequest.new # ListRequest | 

begin
  # Create List
  result = api_instance.create_list(list_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResponse>, Integer, Hash)> create_list_with_http_info(list_request)

```ruby
begin
  # Create List
  data, status_code, headers = api_instance.create_list_with_http_info(list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResponse>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_request** | [**ListRequest**](ListRequest.md) |  |  |

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> <DeleteResponse> delete_list(list_id)

Delete List

Deletes a specific list by its ID.

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

api_instance = SendX::ListApi.new
list_id = 'sendx123' # String | The ID of the list you want to delete

begin
  # Delete List
  result = api_instance.delete_list(list_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_list_with_http_info(list_id)

```ruby
begin
  # Delete List
  data, status_code, headers = api_instance.delete_list_with_http_info(list_id)
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
| **list_id** | **String** | The ID of the list you want to delete |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lists

> <Array<ListModel>> get_all_lists(opts)

Get All Lists

Retrieve all lists for the account.

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

api_instance = SendX::ListApi.new
opts = {
  offset: 0, # Integer | Offset for pagination.
  limit: 10, # Integer | Limit the number of results returned.
  search: 'Marketing' # String | Search term to filter lists.
}

begin
  # Get All Lists
  result = api_instance.get_all_lists(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_all_lists: #{e}"
end
```

#### Using the get_all_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListModel>>, Integer, Hash)> get_all_lists_with_http_info(opts)

```ruby
begin
  # Get All Lists
  data, status_code, headers = api_instance.get_all_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListModel>>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_all_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Offset for pagination. | [optional] |
| **limit** | **Integer** | Limit the number of results returned. | [optional] |
| **search** | **String** | Search term to filter lists. | [optional] |

### Return type

[**Array&lt;ListModel&gt;**](ListModel.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_list_by_id

> <ListModel> get_list_by_id(list_id)

Get List

Retrieve a specific list by its ID.

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

api_instance = SendX::ListApi.new
list_id = 'sendx123' # String | The ID of the list you want to retrieve

begin
  # Get List
  result = api_instance.get_list_by_id(list_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_list_by_id: #{e}"
end
```

#### Using the get_list_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListModel>, Integer, Hash)> get_list_by_id_with_http_info(list_id)

```ruby
begin
  # Get List
  data, status_code, headers = api_instance.get_list_by_id_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListModel>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->get_list_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | The ID of the list you want to retrieve |  |

### Return type

[**ListModel**](ListModel.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_list

> <Response> update_list(list_request, list_id)

Update List

Update an existing list by its ID.

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

api_instance = SendX::ListApi.new
list_request = SendX::ListRequest.new # ListRequest | 
list_id = 'list_id_example' # String | The ID of the list to be updated.

begin
  # Update List
  result = api_instance.update_list(list_request, list_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ListApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Response>, Integer, Hash)> update_list_with_http_info(list_request, list_id)

```ruby
begin
  # Update List
  data, status_code, headers = api_instance.update_list_with_http_info(list_request, list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Response>
rescue SendX::ApiError => e
  puts "Error when calling ListApi->update_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_request** | [**ListRequest**](ListRequest.md) |  |  |
| **list_id** | **String** | The ID of the list to be updated. |  |

### Return type

[**Response**](Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

