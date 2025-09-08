# SendX::EmailSendingApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_email**](EmailSendingApi.md#send_email) | **POST** /send/email | Send transactional email |
| [**send_email_with_template**](EmailSendingApi.md#send_email_with_template) | **POST** /send/template | Send email using template |


## send_email

> <Array<XEmailResponse>> send_email(x_email_message)

Send transactional email

Sends transactional emails to specified recipients with support for personalization, attachments, and tracking. 

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

api_instance = SendX::EmailSendingApi.new
x_email_message = SendX::XEmailMessage.new({from: SendX::XFrom.new({email: 'from@example.com'}), to: [SendX::XTo.new({email: 'to@example.com'})], subject: 'Your Subject Here', html_body: '<h1>Your HTML Content</h1>'}) # XEmailMessage | 

begin
  # Send transactional email
  result = api_instance.send_email(x_email_message)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EmailSendingApi->send_email: #{e}"
end
```

#### Using the send_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<XEmailResponse>>, Integer, Hash)> send_email_with_http_info(x_email_message)

```ruby
begin
  # Send transactional email
  data, status_code, headers = api_instance.send_email_with_http_info(x_email_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<XEmailResponse>>
rescue SendX::ApiError => e
  puts "Error when calling EmailSendingApi->send_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_email_message** | [**XEmailMessage**](XEmailMessage.md) |  |  |

### Return type

[**Array&lt;XEmailResponse&gt;**](XEmailResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_email_with_template

> <Array<XEmailResponse>> send_email_with_template(template_email_message)

Send email using template

Sends emails using a pre-defined template with variable substitution. 

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

api_instance = SendX::EmailSendingApi.new
template_email_message = SendX::TemplateEmailMessage.new({from: SendX::XFrom.new({email: 'from@example.com'}), to: [SendX::XTo.new({email: 'to@example.com'})], subject: 'Your Subject Here', template: 'template_f3lJvTEhSjKGVb5Lwc5SWS'}) # TemplateEmailMessage | 

begin
  # Send email using template
  result = api_instance.send_email_with_template(template_email_message)
  p result
rescue SendX::ApiError => e
  puts "Error when calling EmailSendingApi->send_email_with_template: #{e}"
end
```

#### Using the send_email_with_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<XEmailResponse>>, Integer, Hash)> send_email_with_template_with_http_info(template_email_message)

```ruby
begin
  # Send email using template
  data, status_code, headers = api_instance.send_email_with_template_with_http_info(template_email_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<XEmailResponse>>
rescue SendX::ApiError => e
  puts "Error when calling EmailSendingApi->send_email_with_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_email_message** | [**TemplateEmailMessage**](TemplateEmailMessage.md) |  |  |

### Return type

[**Array&lt;XEmailResponse&gt;**](XEmailResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

