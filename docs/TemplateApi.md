# SendX::TemplateApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_email_template**](TemplateApi.md#create_email_template) | **POST** /template/email | Create email template |
| [**delete_email_template**](TemplateApi.md#delete_email_template) | **DELETE** /template/email/{identifier} | Delete template |
| [**get_all_email_templates**](TemplateApi.md#get_all_email_templates) | **GET** /template/email | Get all templates |
| [**get_email_template**](TemplateApi.md#get_email_template) | **GET** /template/email/{identifier} | Get template by ID |
| [**update_email_template**](TemplateApi.md#update_email_template) | **PUT** /template/email/{identifier} | Update template |


## create_email_template

> <RestRTemplate> create_email_template(rest_e_template)

Create email template

Creates a new reusable email template. 

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

api_instance = SendX::TemplateApi.new
rest_e_template = SendX::RestETemplate.new({name: 'Welcome Email Template', subject: 'Welcome to {{company_name}}!'}) # RestETemplate | 

begin
  # Create email template
  result = api_instance.create_email_template(rest_e_template)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->create_email_template: #{e}"
end
```

#### Using the create_email_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRTemplate>, Integer, Hash)> create_email_template_with_http_info(rest_e_template)

```ruby
begin
  # Create email template
  data, status_code, headers = api_instance.create_email_template_with_http_info(rest_e_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRTemplate>
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->create_email_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_template** | [**RestETemplate**](RestETemplate.md) |  |  |

### Return type

[**RestRTemplate**](RestRTemplate.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_template

> <DeleteResponse> delete_email_template(identifier)

Delete template

Deletes an email template. 

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

api_instance = SendX::TemplateApi.new
identifier = 'template_f3lJvTEhSjKGVb5Lwc5SWS' # String | The unique template identifier to update.  - `template_f3lJvTEhSjKGVb5Lwc5SWS` 

begin
  # Delete template
  result = api_instance.delete_email_template(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->delete_email_template: #{e}"
end
```

#### Using the delete_email_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_email_template_with_http_info(identifier)

```ruby
begin
  # Delete template
  data, status_code, headers = api_instance.delete_email_template_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->delete_email_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique template identifier to update.  - &#x60;template_f3lJvTEhSjKGVb5Lwc5SWS&#x60;  |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_email_templates

> <Array<RestRTemplate>> get_all_email_templates(opts)

Get all templates

Retrieves all email templates. 

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

api_instance = SendX::TemplateApi.new
opts = {
  offset: 56, # Integer | Number of records to skip for pagination.  **Examples:** - `0` - First page (default) - `25` - Second page (with limit=25) - `50` - Third page (with limit=25) 
  limit: 56, # Integer | Maximum number of templates to return per page.  **Guidelines:** - Default: 10 templates - Maximum: 100 templates - Recommended: 25-100 for optimal performance 
  search: 'search_example' # String | Search templates by name (case-insensitive partial matching).  **Examples:** - `newsletter` - Finds \"Weekly Newsletter\", \"Monthly Newsletter\" - `welcome` - Finds \"Welcome Email\", \"New User Welcome\" - `product` - Finds \"Product Launch\", \"Product Update\" 
}

begin
  # Get all templates
  result = api_instance.get_all_email_templates(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->get_all_email_templates: #{e}"
end
```

#### Using the get_all_email_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRTemplate>>, Integer, Hash)> get_all_email_templates_with_http_info(opts)

```ruby
begin
  # Get all templates
  data, status_code, headers = api_instance.get_all_email_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRTemplate>>
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->get_all_email_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Number of records to skip for pagination.  **Examples:** - &#x60;0&#x60; - First page (default) - &#x60;25&#x60; - Second page (with limit&#x3D;25) - &#x60;50&#x60; - Third page (with limit&#x3D;25)  | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of templates to return per page.  **Guidelines:** - Default: 10 templates - Maximum: 100 templates - Recommended: 25-100 for optimal performance  | [optional][default to 10] |
| **search** | **String** | Search templates by name (case-insensitive partial matching).  **Examples:** - &#x60;newsletter&#x60; - Finds \&quot;Weekly Newsletter\&quot;, \&quot;Monthly Newsletter\&quot; - &#x60;welcome&#x60; - Finds \&quot;Welcome Email\&quot;, \&quot;New User Welcome\&quot; - &#x60;product&#x60; - Finds \&quot;Product Launch\&quot;, \&quot;Product Update\&quot;  | [optional] |

### Return type

[**Array&lt;RestRTemplate&gt;**](RestRTemplate.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_template

> <RestRTemplate> get_email_template(identifier)

Get template by ID

Retrieves a specific email template. 

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

api_instance = SendX::TemplateApi.new
identifier = 'template_f3lJvTEhSjKGVb5Lwc5SWS' # String | The unique template identifier.  - `template_f3lJvTEhSjKGVb5Lwc5SWS` - Standard prefixed ID 

begin
  # Get template by ID
  result = api_instance.get_email_template(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->get_email_template: #{e}"
end
```

#### Using the get_email_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRTemplate>, Integer, Hash)> get_email_template_with_http_info(identifier)

```ruby
begin
  # Get template by ID
  data, status_code, headers = api_instance.get_email_template_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRTemplate>
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->get_email_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique template identifier.  - &#x60;template_f3lJvTEhSjKGVb5Lwc5SWS&#x60; - Standard prefixed ID  |  |

### Return type

[**RestRTemplate**](RestRTemplate.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_email_template

> <RestRTemplate> update_email_template(rest_e_template, identifier)

Update template

Updates an existing email template. 

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

api_instance = SendX::TemplateApi.new
rest_e_template = SendX::RestETemplate.new({name: 'Welcome Email Template', subject: 'Welcome to {{company_name}}!'}) # RestETemplate | 
identifier = 'template_f3lJvTEhSjKGVb5Lwc5SWS' # String | The unique template identifier to update.  - `template_f3lJvTEhSjKGVb5Lwc5SWS` 

begin
  # Update template
  result = api_instance.update_email_template(rest_e_template, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->update_email_template: #{e}"
end
```

#### Using the update_email_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRTemplate>, Integer, Hash)> update_email_template_with_http_info(rest_e_template, identifier)

```ruby
begin
  # Update template
  data, status_code, headers = api_instance.update_email_template_with_http_info(rest_e_template, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRTemplate>
rescue SendX::ApiError => e
  puts "Error when calling TemplateApi->update_email_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_e_template** | [**RestETemplate**](RestETemplate.md) |  |  |
| **identifier** | **String** | The unique template identifier to update.  - &#x60;template_f3lJvTEhSjKGVb5Lwc5SWS&#x60;  |  |

### Return type

[**RestRTemplate**](RestRTemplate.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

