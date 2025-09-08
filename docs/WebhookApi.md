# SendX::WebhookApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhookApi.md#create_webhook) | **POST** /webhook | Create webhook |
| [**delete_webhook**](WebhookApi.md#delete_webhook) | **DELETE** /webhook/{identifier} | Delete webhook |
| [**get_all_webhooks**](WebhookApi.md#get_all_webhooks) | **GET** /webhook | Get all webhooks |
| [**get_webhook**](WebhookApi.md#get_webhook) | **GET** /webhook/{identifier} | Get webhook by ID |
| [**update_webhook**](WebhookApi.md#update_webhook) | **PUT** /webhook/{identifier} | Update webhook |


## create_webhook

> <RestRWebhook> create_webhook(rest_e_webhook)

Create webhook

Creates a new webhook for event notifications. 

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

api_instance = SendX::WebhookApi.new
rest_e_webhook = SendX::RestEWebhook.new({url: 'https://api.example.com/webhooks/sendx', enabled: false}) # RestEWebhook | 

begin
  # Create webhook
  result = api_instance.create_webhook(rest_e_webhook)
  p result
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRWebhook>, Integer, Hash)> create_webhook_with_http_info(rest_e_webhook)

```ruby
begin
  # Create webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(rest_e_webhook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRWebhook>
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_webhook** | [**RestEWebhook**](RestEWebhook.md) |  |  |

### Return type

[**RestRWebhook**](RestRWebhook.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> <DeleteResponse> delete_webhook(identifier)

Delete webhook

Deletes a webhook configuration.  **🎯 Key Features:** - Remove webhooks - Stop event delivery - Clean up endpoints 

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

api_instance = SendX::WebhookApi.new
identifier = 'identifier_example' # String | Webhook identifier to update

begin
  # Delete webhook
  result = api_instance.delete_webhook(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_webhook_with_http_info(identifier)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Webhook identifier to update |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_webhooks

> <Array<RestRWebhook>> get_all_webhooks

Get all webhooks

Retrieves all configured webhooks. 

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

api_instance = SendX::WebhookApi.new

begin
  # Get all webhooks
  result = api_instance.get_all_webhooks
  p result
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->get_all_webhooks: #{e}"
end
```

#### Using the get_all_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRWebhook>>, Integer, Hash)> get_all_webhooks_with_http_info

```ruby
begin
  # Get all webhooks
  data, status_code, headers = api_instance.get_all_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRWebhook>>
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->get_all_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;RestRWebhook&gt;**](RestRWebhook.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <RestRWebhook> get_webhook(identifier)

Get webhook by ID

Retrieves details about a specific webhook. 

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

api_instance = SendX::WebhookApi.new
identifier = 'identifier_example' # String | Webhook identifier to retrieve

begin
  # Get webhook by ID
  result = api_instance.get_webhook(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRWebhook>, Integer, Hash)> get_webhook_with_http_info(identifier)

```ruby
begin
  # Get webhook by ID
  data, status_code, headers = api_instance.get_webhook_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRWebhook>
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Webhook identifier to retrieve |  |

### Return type

[**RestRWebhook**](RestRWebhook.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> <RestRWebhook> update_webhook(rest_e_webhook, identifier)

Update webhook

Updates webhook configuration. 

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

api_instance = SendX::WebhookApi.new
rest_e_webhook = SendX::RestEWebhook.new({url: 'https://api.example.com/webhooks/sendx', enabled: false}) # RestEWebhook | 
identifier = 'identifier_example' # String | Webhook identifier to update

begin
  # Update webhook
  result = api_instance.update_webhook(rest_e_webhook, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRWebhook>, Integer, Hash)> update_webhook_with_http_info(rest_e_webhook, identifier)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(rest_e_webhook, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRWebhook>
rescue SendX::ApiError => e
  puts "Error when calling WebhookApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_webhook** | [**RestEWebhook**](RestEWebhook.md) |  |  |
| **identifier** | **String** | Webhook identifier to update |  |

### Return type

[**RestRWebhook**](RestRWebhook.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

