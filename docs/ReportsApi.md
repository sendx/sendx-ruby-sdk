# SendX::ReportsApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_campaign_report**](ReportsApi.md#get_campaign_report) | **GET** /report/campaign/{campaignId} | Get CampaignReport Data |


## get_campaign_report

> <ReportData> get_campaign_report(campaign_id, opts)

Get CampaignReport Data

Retrieve the campaign report data based on the provided campaign id.

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

api_instance = SendX::ReportsApi.new
campaign_id = 'campaign_id_example' # String | The ID of the campaign to retrieve the report data for
opts = {
  integration_type: 'integration_type_example' # String | Type of integration for the report data (optional)
}

begin
  # Get CampaignReport Data
  result = api_instance.get_campaign_report(campaign_id, opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ReportsApi->get_campaign_report: #{e}"
end
```

#### Using the get_campaign_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportData>, Integer, Hash)> get_campaign_report_with_http_info(campaign_id, opts)

```ruby
begin
  # Get CampaignReport Data
  data, status_code, headers = api_instance.get_campaign_report_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportData>
rescue SendX::ApiError => e
  puts "Error when calling ReportsApi->get_campaign_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The ID of the campaign to retrieve the report data for |  |
| **integration_type** | **String** | Type of integration for the report data (optional) | [optional] |

### Return type

[**ReportData**](ReportData.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

