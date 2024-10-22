# SendX::CampaignApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_campaign**](CampaignApi.md#create_campaign) | **POST** /campaign | Create Campaign |
| [**delete_campaign**](CampaignApi.md#delete_campaign) | **DELETE** /campaign/{campaignId} | Delete Campaign |
| [**edit_campaign**](CampaignApi.md#edit_campaign) | **PUT** /campaign/{campaignId} | Edit Campaign |
| [**get_all_campaigns**](CampaignApi.md#get_all_campaigns) | **GET** /campaign | Get All Campaigns |
| [**get_campaign_by_id**](CampaignApi.md#get_campaign_by_id) | **GET** /campaign/{campaignId} | Get Campaign By Id |


## create_campaign

> <CreateResponse> create_campaign(campaign_request)

Create Campaign

Create a new email campaign

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

api_instance = SendX::CampaignApi.new
campaign_request = SendX::CampaignRequest.new # CampaignRequest | The campaign content

begin
  # Create Campaign
  result = api_instance.create_campaign(campaign_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->create_campaign: #{e}"
end
```

#### Using the create_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResponse>, Integer, Hash)> create_campaign_with_http_info(campaign_request)

```ruby
begin
  # Create Campaign
  data, status_code, headers = api_instance.create_campaign_with_http_info(campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResponse>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->create_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_request** | [**CampaignRequest**](CampaignRequest.md) | The campaign content |  |

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_campaign

> <DeleteCampaign200Response> delete_campaign(campaign_id)

Delete Campaign

Deletes a specific campaign by its campaignId.

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

api_instance = SendX::CampaignApi.new
campaign_id = 'campaign_id_example' # String | The ID of the campaign to delete

begin
  # Delete Campaign
  result = api_instance.delete_campaign(campaign_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->delete_campaign: #{e}"
end
```

#### Using the delete_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCampaign200Response>, Integer, Hash)> delete_campaign_with_http_info(campaign_id)

```ruby
begin
  # Delete Campaign
  data, status_code, headers = api_instance.delete_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCampaign200Response>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->delete_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The ID of the campaign to delete |  |

### Return type

[**DeleteCampaign200Response**](DeleteCampaign200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_campaign

> <Campaign> edit_campaign(campaign_request, campaign_id)

Edit Campaign

Submit edited content for a specific campaign.

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

api_instance = SendX::CampaignApi.new
campaign_request = SendX::CampaignRequest.new # CampaignRequest | 
campaign_id = 'campaign_id_example' # String | The ID of the campaign to edit

begin
  # Edit Campaign
  result = api_instance.edit_campaign(campaign_request, campaign_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->edit_campaign: #{e}"
end
```

#### Using the edit_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> edit_campaign_with_http_info(campaign_request, campaign_id)

```ruby
begin
  # Edit Campaign
  data, status_code, headers = api_instance.edit_campaign_with_http_info(campaign_request, campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->edit_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_request** | [**CampaignRequest**](CampaignRequest.md) |  |  |
| **campaign_id** | **String** | The ID of the campaign to edit |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_campaigns

> <Array<Campaign>> get_all_campaigns(opts)

Get All Campaigns

Retrieve a list of all campaigns.

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

api_instance = SendX::CampaignApi.new
opts = {
  offset: 56, # Integer | Offset for pagination
  limit: 56, # Integer | Limit for pagination
  search: 'search_example' # String | Search term to filter campaigns
}

begin
  # Get All Campaigns
  result = api_instance.get_all_campaigns(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_all_campaigns: #{e}"
end
```

#### Using the get_all_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Campaign>>, Integer, Hash)> get_all_campaigns_with_http_info(opts)

```ruby
begin
  # Get All Campaigns
  data, status_code, headers = api_instance.get_all_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Campaign>>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_all_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Offset for pagination | [optional][default to 0] |
| **limit** | **Integer** | Limit for pagination | [optional][default to 20] |
| **search** | **String** | Search term to filter campaigns | [optional] |

### Return type

[**Array&lt;Campaign&gt;**](Campaign.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_by_id

> <Campaign> get_campaign_by_id(campaign_id)

Get Campaign By Id

Retrieve a specific campaign using its ID.

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

api_instance = SendX::CampaignApi.new
campaign_id = 'campaign_id_example' # String | The ID of the campaign to retrieve.

begin
  # Get Campaign By Id
  result = api_instance.get_campaign_by_id(campaign_id)
  p result
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_campaign_by_id: #{e}"
end
```

#### Using the get_campaign_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> get_campaign_by_id_with_http_info(campaign_id)

```ruby
begin
  # Get Campaign By Id
  data, status_code, headers = api_instance.get_campaign_by_id_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue SendX::ApiError => e
  puts "Error when calling CampaignApi->get_campaign_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The ID of the campaign to retrieve. |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

