# SendX::SenderApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sender**](SenderApi.md#create_sender) | **POST** /sender | Create sender |
| [**get_all_senders**](SenderApi.md#get_all_senders) | **GET** /sender | Get all senders |


## create_sender

> <RestRSender> create_sender(rest_e_sender)

Create sender

Adds a new sender email address. 

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

api_instance = SendX::SenderApi.new
rest_e_sender = SendX::RestESender.new({name: 'John Smith', email: 'john@example.com'}) # RestESender | 

begin
  # Create sender
  result = api_instance.create_sender(rest_e_sender)
  p result
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->create_sender: #{e}"
end
```

#### Using the create_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRSender>, Integer, Hash)> create_sender_with_http_info(rest_e_sender)

```ruby
begin
  # Create sender
  data, status_code, headers = api_instance.create_sender_with_http_info(rest_e_sender)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRSender>
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->create_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_sender** | [**RestESender**](RestESender.md) |  |  |

### Return type

[**RestRSender**](RestRSender.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_senders

> <Array<RestRSender>> get_all_senders

Get all senders

Retrieves all verified sender addresses. 

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

api_instance = SendX::SenderApi.new

begin
  # Get all senders
  result = api_instance.get_all_senders
  p result
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->get_all_senders: #{e}"
end
```

#### Using the get_all_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRSender>>, Integer, Hash)> get_all_senders_with_http_info

```ruby
begin
  # Get all senders
  data, status_code, headers = api_instance.get_all_senders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRSender>>
rescue SendX::ApiError => e
  puts "Error when calling SenderApi->get_all_senders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;RestRSender&gt;**](RestRSender.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

