# SendX::SenderApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sender**](SenderApi.md#create_sender) | **POST** /sender | Create Sender |
| [**get_all_senders**](SenderApi.md#get_all_senders) | **GET** /sender | Get All Senders |


## create_sender

> <Sender> create_sender(sender_request)

Create Sender

Creates a new sender in the system.

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

api_instance = SendX::SenderApi.new
sender_request = SendX::SenderRequest.new({name: 'Linus', email: 'linus@linux.org'}) # SenderRequest | 

begin
  # Create Sender
  result = api_instance.create_sender(sender_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->create_sender: #{e}"
end
```

#### Using the create_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sender>, Integer, Hash)> create_sender_with_http_info(sender_request)

```ruby
begin
  # Create Sender
  data, status_code, headers = api_instance.create_sender_with_http_info(sender_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sender>
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->create_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_request** | [**SenderRequest**](SenderRequest.md) |  |  |

### Return type

[**Sender**](Sender.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_senders

> <Array<SenderResponse>> get_all_senders(opts)

Get All Senders

Retrieve all senders for the team, with optional filters like offset, limit, and search.

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

api_instance = SendX::SenderApi.new
opts = {
  offset: 56, # Integer | Number of records to skip
  limit: 56, # Integer | Maximum number of records to return
  search: 'search_example' # String | Search keyword to filter senders by name or email
}

begin
  # Get All Senders
  result = api_instance.get_all_senders(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->get_all_senders: #{e}"
end
```

#### Using the get_all_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SenderResponse>>, Integer, Hash)> get_all_senders_with_http_info(opts)

```ruby
begin
  # Get All Senders
  data, status_code, headers = api_instance.get_all_senders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SenderResponse>>
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->get_all_senders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of records to skip | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of records to return | [optional][default to 10] |
| **search** | **String** | Search keyword to filter senders by name or email | [optional] |

### Return type

[**Array&lt;SenderResponse&gt;**](SenderResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

