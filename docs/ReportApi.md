# SendX::ReportApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_campaign_report**](ReportApi.md#get_campaign_report) | **GET** /report/campaign/{identifier} | Get campaign report |


## get_campaign_report

> <RestReportData> get_campaign_report(identifier)

Get campaign report

Retrieves a detailed performance report for a specific campaign. 

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

api_instance = SendX::ReportApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Get campaign report
  result = api_instance.get_campaign_report(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ReportApi->get_campaign_report: #{e}"
end
```

#### Using the get_campaign_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestReportData>, Integer, Hash)> get_campaign_report_with_http_info(identifier)

```ruby
begin
  # Get campaign report
  data, status_code, headers = api_instance.get_campaign_report_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestReportData>
rescue SendX::ApiError => e
  puts "Error when calling ReportApi->get_campaign_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**RestReportData**](RestReportData.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

