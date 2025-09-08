# SendX::EventApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_custom_postback_get**](EventApi.md#events_custom_postback_get) | **GET** /events/custom/postback | Custom Event Postback URL |
| [**events_revenue_postback_get**](EventApi.md#events_revenue_postback_get) | **GET** /events/revenue/postback | Revenue Event Postback URL |


## events_custom_postback_get

> <EventsRevenuePostbackGet200Response> events_custom_postback_get(team_id, id, event, any_key)

Custom Event Postback URL

Register a custom event for a specific team and event.

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

api_instance = SendX::EventApi.new
team_id = 'team_id_example' # String | The unique identifier for the team.
id = 'id_example' # String | The unique sendx identifier for the contact/customer.
event = 'event_example' # String | The custom event name.
any_key = '24.43' # String | Arbitrary custom data as key-value pairs. Add custom parameters directly to the query string.  For example, `amount=24.43` or `currency=USD`. 

begin
  # Custom Event Postback URL
  result = api_instance.events_custom_postback_get(team_id, id, event, any_key)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EventApi->events_custom_postback_get: #{e}"
end
```

#### Using the events_custom_postback_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsRevenuePostbackGet200Response>, Integer, Hash)> events_custom_postback_get_with_http_info(team_id, id, event, any_key)

```ruby
begin
  # Custom Event Postback URL
  data, status_code, headers = api_instance.events_custom_postback_get_with_http_info(team_id, id, event, any_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsRevenuePostbackGet200Response>
rescue SendX::ApiError => e
  puts "Error when calling EventApi->events_custom_postback_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The unique identifier for the team. |  |
| **id** | **String** | The unique sendx identifier for the contact/customer. |  |
| **event** | **String** | The custom event name. |  |
| **any_key** | **String** | Arbitrary custom data as key-value pairs. Add custom parameters directly to the query string.  For example, &#x60;amount&#x3D;24.43&#x60; or &#x60;currency&#x3D;USD&#x60;.  |  |

### Return type

[**EventsRevenuePostbackGet200Response**](EventsRevenuePostbackGet200Response.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_revenue_postback_get

> <EventsRevenuePostbackGet200Response> events_revenue_postback_get(team_id, id, amount, campaign_id)

Revenue Event Postback URL

Trigger a revenue postback for a specific team and event.

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

api_instance = SendX::EventApi.new
team_id = 'team_id_example' # String | The unique identifier for the team.
id = 'id_example' # String | The unique sendx identifier for the contact/customer.
amount = 3.4 # Float | The revenue amount to be posted back.
campaign_id = 'campaign_id_example' # String | The unique identifier for the campaign.

begin
  # Revenue Event Postback URL
  result = api_instance.events_revenue_postback_get(team_id, id, amount, campaign_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EventApi->events_revenue_postback_get: #{e}"
end
```

#### Using the events_revenue_postback_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsRevenuePostbackGet200Response>, Integer, Hash)> events_revenue_postback_get_with_http_info(team_id, id, amount, campaign_id)

```ruby
begin
  # Revenue Event Postback URL
  data, status_code, headers = api_instance.events_revenue_postback_get_with_http_info(team_id, id, amount, campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsRevenuePostbackGet200Response>
rescue SendX::ApiError => e
  puts "Error when calling EventApi->events_revenue_postback_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The unique identifier for the team. |  |
| **id** | **String** | The unique sendx identifier for the contact/customer. |  |
| **amount** | **Float** | The revenue amount to be posted back. |  |
| **campaign_id** | **String** | The unique identifier for the campaign. |  |

### Return type

[**EventsRevenuePostbackGet200Response**](EventsRevenuePostbackGet200Response.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

