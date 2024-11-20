# SendX::GettingStartedApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**identify_contact**](GettingStartedApi.md#identify_contact) | **POST** /contact/identify | Identify contact |
| [**tracking_contact**](GettingStartedApi.md#tracking_contact) | **POST** /contact/track | Add Tracking info |


## identify_contact

> <IdentifyResponse> identify_contact(identify_request)

Identify contact

Identify a contact by email address. If the contact already exists, it will be updated.

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

api_instance = SendX::GettingStartedApi.new
identify_request = SendX::IdentifyRequest.new({email: 'user@example.com'}) # IdentifyRequest | 

begin
  # Identify contact
  result = api_instance.identify_contact(identify_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling GettingStartedApi->identify_contact: #{e}"
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
  puts "Error when calling GettingStartedApi->identify_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identify_request** | [**IdentifyRequest**](IdentifyRequest.md) |  |  |

### Return type

[**IdentifyResponse**](IdentifyResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tracking_contact

> <TrackResponse> tracking_contact(track_request)

Add Tracking info

Track a contact

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

api_instance = SendX::GettingStartedApi.new
track_request = SendX::TrackRequest.new # TrackRequest | 

begin
  # Add Tracking info
  result = api_instance.tracking_contact(track_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling GettingStartedApi->tracking_contact: #{e}"
end
```

#### Using the tracking_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrackResponse>, Integer, Hash)> tracking_contact_with_http_info(track_request)

```ruby
begin
  # Add Tracking info
  data, status_code, headers = api_instance.tracking_contact_with_http_info(track_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrackResponse>
rescue SendX::ApiError => e
  puts "Error when calling GettingStartedApi->tracking_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **track_request** | [**TrackRequest**](TrackRequest.md) |  |  |

### Return type

[**TrackResponse**](TrackResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

