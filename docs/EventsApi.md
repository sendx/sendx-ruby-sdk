# SendX::EventsApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**track_custom_event**](EventsApi.md#track_custom_event) | **POST** /events/custom | Track custom event |
| [**track_revenue_event**](EventsApi.md#track_revenue_event) | **POST** /events/revenue | Track revenue event |


## track_custom_event

> <EventResponse> track_custom_event(custom_event_request)

Track custom event

Records custom events for advanced tracking. 

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

api_instance = SendX::EventsApi.new
custom_event_request = SendX::CustomEventRequest.new({name: 'video_watched'}) # CustomEventRequest | 

begin
  # Track custom event
  result = api_instance.track_custom_event(custom_event_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EventsApi->track_custom_event: #{e}"
end
```

#### Using the track_custom_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> track_custom_event_with_http_info(custom_event_request)

```ruby
begin
  # Track custom event
  data, status_code, headers = api_instance.track_custom_event_with_http_info(custom_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue SendX::ApiError => e
  puts "Error when calling EventsApi->track_custom_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_event_request** | [**CustomEventRequest**](CustomEventRequest.md) |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## track_revenue_event

> <EventResponse> track_revenue_event(revenue_event_request)

Track revenue event

Records revenue events for analytics and attribution. 

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

api_instance = SendX::EventsApi.new
revenue_event_request = SendX::RevenueEventRequest.new({identifier: 'customer@example.com', amount: 99.99}) # RevenueEventRequest | 

begin
  # Track revenue event
  result = api_instance.track_revenue_event(revenue_event_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EventsApi->track_revenue_event: #{e}"
end
```

#### Using the track_revenue_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> track_revenue_event_with_http_info(revenue_event_request)

```ruby
begin
  # Track revenue event
  data, status_code, headers = api_instance.track_revenue_event_with_http_info(revenue_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue SendX::ApiError => e
  puts "Error when calling EventsApi->track_revenue_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revenue_event_request** | [**RevenueEventRequest**](RevenueEventRequest.md) |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

