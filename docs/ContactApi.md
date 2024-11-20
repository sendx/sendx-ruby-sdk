# SendX::ContactApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact**](ContactApi.md#create_contact) | **POST** /contact | Create a contact |
| [**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /contact/{identifier} | Delete Contact |
| [**get_all_contacts**](ContactApi.md#get_all_contacts) | **GET** /contact | Get All Contacts |
| [**get_contact_by_id**](ContactApi.md#get_contact_by_id) | **GET** /contact/{identifier} | Get Contact by Identifier |
| [**unsubscribe_contact**](ContactApi.md#unsubscribe_contact) | **POST** /contact/unsubscribe/{identifier} | Unsubscribe Contact |
| [**update_contact**](ContactApi.md#update_contact) | **PUT** /contact/{identifier} | Update Contact |


## create_contact

> <Response> create_contact(contact_request)

Create a contact

Create Contact with given data

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

api_instance = SendX::ContactApi.new
contact_request = SendX::ContactRequest.new # ContactRequest | 

begin
  # Create a contact
  result = api_instance.create_contact(contact_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Response>, Integer, Hash)> create_contact_with_http_info(contact_request)

```ruby
begin
  # Create a contact
  data, status_code, headers = api_instance.create_contact_with_http_info(contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Response>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_request** | [**ContactRequest**](ContactRequest.md) |  |  |

### Return type

[**Response**](Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact

> <Response> delete_contact(identifier)

Delete Contact

Deletes Contact

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

api_instance = SendX::ContactApi.new
identifier = 'identifier_example' # String | The Contact ID/ Email to delete

begin
  # Delete Contact
  result = api_instance.delete_contact(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->delete_contact: #{e}"
end
```

#### Using the delete_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Response>, Integer, Hash)> delete_contact_with_http_info(identifier)

```ruby
begin
  # Delete Contact
  data, status_code, headers = api_instance.delete_contact_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Response>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->delete_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The Contact ID/ Email to delete |  |

### Return type

[**Response**](Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_contacts

> <Array<Contact>> get_all_contacts(opts)

Get All Contacts

Find all contacts with optional filters

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

api_instance = SendX::ContactApi.new
opts = {
  offset: 56, # Integer | Offset for pagination
  limit: 56, # Integer | Limit for pagination
  contact_type: 'all', # String | Filter contacts by type
  search: 'search_example' # String | Search term to filter contacts
}

begin
  # Get All Contacts
  result = api_instance.get_all_contacts(opts)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_all_contacts: #{e}"
end
```

#### Using the get_all_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Contact>>, Integer, Hash)> get_all_contacts_with_http_info(opts)

```ruby
begin
  # Get All Contacts
  data, status_code, headers = api_instance.get_all_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Contact>>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_all_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Offset for pagination | [optional][default to 0] |
| **limit** | **Integer** | Limit for pagination | [optional][default to 10] |
| **contact_type** | **String** | Filter contacts by type | [optional] |
| **search** | **String** | Search term to filter contacts | [optional] |

### Return type

[**Array&lt;Contact&gt;**](Contact.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_by_id

> <Contact> get_contact_by_id(identifier)

Get Contact by Identifier

Retrieve a specific contact by its identifier.

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

api_instance = SendX::ContactApi.new
identifier = 'john@doe.com' # String | The ID or Email of the contact to retrieve.

begin
  # Get Contact by Identifier
  result = api_instance.get_contact_by_id(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_contact_by_id: #{e}"
end
```

#### Using the get_contact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> get_contact_by_id_with_http_info(identifier)

```ruby
begin
  # Get Contact by Identifier
  data, status_code, headers = api_instance.get_contact_by_id_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->get_contact_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The ID or Email of the contact to retrieve. |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unsubscribe_contact

> <Response> unsubscribe_contact(identifier)

Unsubscribe Contact

Unsubscribe a globally existing contact

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

api_instance = SendX::ContactApi.new
identifier = 'sendx123' # String | The Contact ID or email to unsubscribe

begin
  # Unsubscribe Contact
  result = api_instance.unsubscribe_contact(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->unsubscribe_contact: #{e}"
end
```

#### Using the unsubscribe_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Response>, Integer, Hash)> unsubscribe_contact_with_http_info(identifier)

```ruby
begin
  # Unsubscribe Contact
  data, status_code, headers = api_instance.unsubscribe_contact_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Response>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->unsubscribe_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The Contact ID or email to unsubscribe |  |

### Return type

[**Response**](Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact

> <Contact> update_contact(contact_request, identifier)

Update Contact

Update Contact with given data

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

api_instance = SendX::ContactApi.new
contact_request = SendX::ContactRequest.new # ContactRequest | 
identifier = 'sendxid123' # String | The ID or email of the Contact to update

begin
  # Update Contact
  result = api_instance.update_contact(contact_request, identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->update_contact: #{e}"
end
```

#### Using the update_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> update_contact_with_http_info(contact_request, identifier)

```ruby
begin
  # Update Contact
  data, status_code, headers = api_instance.update_contact_with_http_info(contact_request, identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_request** | [**ContactRequest**](ContactRequest.md) |  |  |
| **identifier** | **String** | The ID or email of the Contact to update |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

