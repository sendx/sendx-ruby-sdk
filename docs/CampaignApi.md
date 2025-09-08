# SendX::CampaignApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_campaign**](CampaignApi.md#create_campaign) | **POST** /campaign | Create campaign |
| [**delete_campaign**](CampaignApi.md#delete_campaign) | **DELETE** /campaign/{identifier} | Delete campaign |
| [**get_all_campaigns**](CampaignApi.md#get_all_campaigns) | **GET** /campaign | Get all campaigns |
| [**get_campaign**](CampaignApi.md#get_campaign) | **GET** /campaign/{identifier} | Get campaign by ID |


## create_campaign

> <RestRCampaign> create_campaign(rest_e_campaign)

Create campaign

Creates a new email campaign. 

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

api_instance = SendX::CampaignApi.new
rest_e_campaign = SendX::RestECampaign.new({name: 'Spring Sale Campaign', subject: '🌸 Spring Sale - {{contact.firstName}}, Save 30%!', sender: 'sender_4vK3WFhMgvOwUNyaL4QxCD', html_code: '<html><body><h1>Spring Sale!</h1><p>Save 30% on all items</p></body></html>'}) # RestECampaign | 

begin
  # Create campaign
  result = api_instance.create_campaign(rest_e_campaign)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->create_campaign: #{e}"
end
```

#### Using the create_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRCampaign>, Integer, Hash)> create_campaign_with_http_info(rest_e_campaign)

```ruby
begin
  # Create campaign
  data, status_code, headers = api_instance.create_campaign_with_http_info(rest_e_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRCampaign>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->create_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_campaign** | [**RestECampaign**](RestECampaign.md) |  |  |

### Return type

[**RestRCampaign**](RestRCampaign.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_campaign

> <DeleteResponse> delete_campaign(identifier)

Delete campaign

Deletes a campaign. 

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

api_instance = SendX::CampaignApi.new
identifier = 'identifier_example' # String | Campaign identifier to delete

begin
  # Delete campaign
  result = api_instance.delete_campaign(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->delete_campaign: #{e}"
end
```

#### Using the delete_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_campaign_with_http_info(identifier)

```ruby
begin
  # Delete campaign
  data, status_code, headers = api_instance.delete_campaign_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->delete_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Campaign identifier to delete |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_campaigns

> <Array<RestRCampaign>> get_all_campaigns(opts)

Get all campaigns

Retrieves a paginated list of all campaigns. 

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

api_instance = SendX::CampaignApi.new
opts = {
  offset: 56, # Integer | Number of campaigns to skip
  limit: 56, # Integer | Maximum number of campaigns to return
  campaign_type: 'all' # String | Filter by campaign type
}

begin
  # Get all campaigns
  result = api_instance.get_all_campaigns(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_all_campaigns: #{e}"
end
```

#### Using the get_all_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRCampaign>>, Integer, Hash)> get_all_campaigns_with_http_info(opts)

```ruby
begin
  # Get all campaigns
  data, status_code, headers = api_instance.get_all_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRCampaign>>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_all_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of campaigns to skip | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of campaigns to return | [optional][default to 10] |
| **campaign_type** | **String** | Filter by campaign type | [optional][default to &#39;all&#39;] |

### Return type

[**Array&lt;RestRCampaign&gt;**](RestRCampaign.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign

> <RestRCampaign> get_campaign(identifier)

Get campaign by ID

Retrieves detailed information about a specific campaign. 

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

api_instance = SendX::CampaignApi.new
identifier = 'identifier_example' # String | Campaign identifier - `campaign_IMBoxK2iB5sUdgiNOjqAMA` 

begin
  # Get campaign by ID
  result = api_instance.get_campaign(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_campaign: #{e}"
end
```

#### Using the get_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRCampaign>, Integer, Hash)> get_campaign_with_http_info(identifier)

```ruby
begin
  # Get campaign by ID
  data, status_code, headers = api_instance.get_campaign_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRCampaign>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Campaign identifier - &#x60;campaign_IMBoxK2iB5sUdgiNOjqAMA&#x60;  |  |

### Return type

[**RestRCampaign**](RestRCampaign.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

