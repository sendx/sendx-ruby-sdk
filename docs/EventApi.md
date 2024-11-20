# SendX::EventApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_revenue_event**](EventApi.md#create_revenue_event) | **POST** /events/revenue | Record a revenue event for a specific contact |
| [**push_custom_event**](EventApi.md#push_custom_event) | **POST** /events/custom | Push a custom event associated with a contact |


## create_revenue_event

> <EventResponse> create_revenue_event(revenue_event_request)

Record a revenue event for a specific contact

Records a revenue event, which can be attributed to campaigns, drips, workflows, or other sources of user interaction.

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

api_instance = SendX::EventApi.new
revenue_event_request = SendX::RevenueEventRequest.new({identifier: 'john.doe@example.com', amount: 123.23, currency: 'INR', source: 'app', time: 1669990400}) # RevenueEventRequest | 

begin
  # Record a revenue event for a specific contact
  result = api_instance.create_revenue_event(revenue_event_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EventApi->create_revenue_event: #{e}"
end
```

#### Using the create_revenue_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> create_revenue_event_with_http_info(revenue_event_request)

```ruby
begin
  # Record a revenue event for a specific contact
  data, status_code, headers = api_instance.create_revenue_event_with_http_info(revenue_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue SendX::ApiError => e
  puts "Error when calling EventApi->create_revenue_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revenue_event_request** | [**RevenueEventRequest**](RevenueEventRequest.md) |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## push_custom_event

> <EventResponse> push_custom_event(custom_event_request)

Push a custom event associated with a contact

Pushes a custom event with properties and values for a specified contact.

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

api_instance = SendX::EventApi.new
custom_event_request = SendX::CustomEventRequest.new({name: 'abandoned_cart', identifier: 'john.doe@example.com', data: { key: 'inner_example'}, time: 1669990400}) # CustomEventRequest | 

begin
  # Push a custom event associated with a contact
  result = api_instance.push_custom_event(custom_event_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EventApi->push_custom_event: #{e}"
end
```

#### Using the push_custom_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> push_custom_event_with_http_info(custom_event_request)

```ruby
begin
  # Push a custom event associated with a contact
  data, status_code, headers = api_instance.push_custom_event_with_http_info(custom_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue SendX::ApiError => e
  puts "Error when calling EventApi->push_custom_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_event_request** | [**CustomEventRequest**](CustomEventRequest.md) |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

