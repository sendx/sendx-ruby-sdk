# SendX::TrackingApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**identify_contact**](TrackingApi.md#identify_contact) | **POST** /contact/identify | Identify contact |
| [**track_contact**](TrackingApi.md#track_contact) | **POST** /contact/track | Track contact |


## identify_contact

> <IdentifyResponse> identify_contact(identify_request)

Identify contact

Legacy endpoint for identifying contacts. Creates or updates a contact.   **🎯 Key Features:** - Creates contact if doesn't exist - Updates if email already exists - Supports custom fields and tags 

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

api_instance = SendX::TrackingApi.new
identify_request = SendX::IdentifyRequest.new({email: 'email_example'}) # IdentifyRequest | 

begin
  # Identify contact
  result = api_instance.identify_contact(identify_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TrackingApi->identify_contact: #{e}"
end
```

#### Using the identify_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentifyResponse>, Integer, Hash)> identify_contact_with_http_info(identify_request)

```ruby
begin
  # Identify contact
  data, status_code, headers = api_instance.identify_contact_with_http_info(identify_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentifyResponse>
rescue SendX::ApiError => e
  puts "Error when calling TrackingApi->identify_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identify_request** | [**IdentifyRequest**](IdentifyRequest.md) |  |  |

### Return type

[**IdentifyResponse**](IdentifyResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## track_contact

> <TrackResponse> track_contact(track_request)

Track contact

Legacy endpoint for tracking contact behavior through tags.   **🎯 Key Features:** - Add or remove tags - Trigger automations - Track user behavior 

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

api_instance = SendX::TrackingApi.new
track_request = SendX::TrackRequest.new # TrackRequest | 

begin
  # Track contact
  result = api_instance.track_contact(track_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TrackingApi->track_contact: #{e}"
end
```

#### Using the track_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrackResponse>, Integer, Hash)> track_contact_with_http_info(track_request)

```ruby
begin
  # Track contact
  data, status_code, headers = api_instance.track_contact_with_http_info(track_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrackResponse>
rescue SendX::ApiError => e
  puts "Error when calling TrackingApi->track_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **track_request** | [**TrackRequest**](TrackRequest.md) |  |  |

### Return type

[**TrackResponse**](TrackResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

