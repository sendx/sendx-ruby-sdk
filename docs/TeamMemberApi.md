# SendX::TeamMemberApi

All URIs are relative to *https://api.sendx.io/api/v1/rest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_team_members**](TeamMemberApi.md#get_all_team_members) | **GET** /team/member | Get all team members |
| [**get_team_member**](TeamMemberApi.md#get_team_member) | **GET** /team/member/{identifier} | Get a team member by ID |


## get_all_team_members

> <Array<RestRMember>> get_all_team_members

Get all team members

Retrieves all team members.

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

api_instance = SendX::TeamMemberApi.new

begin
  # Get all team members
  result = api_instance.get_all_team_members
  p result
rescue SendX::ApiError => e
  puts "Error when calling TeamMemberApi->get_all_team_members: #{e}"
end
```

#### Using the get_all_team_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RestRMember>>, Integer, Hash)> get_all_team_members_with_http_info

```ruby
begin
  # Get all team members
  data, status_code, headers = api_instance.get_all_team_members_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RestRMember>>
rescue SendX::ApiError => e
  puts "Error when calling TeamMemberApi->get_all_team_members_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;RestRMember&gt;**](RestRMember.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team_member

> <RestRMember> get_team_member(identifier)

Get a team member by ID

Retrieves a single team member by their unique identifier.

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

api_instance = SendX::TeamMemberApi.new
identifier = 'contact_BnKjkbBBS500CoBCP0oChQ' # String | Resource identifier with prefix (e.g., `contact_BnKjkbBBS500CoBCP0oChQ`)  **Format:** `<prefix>_<22-character-id>` 

begin
  # Get a team member by ID
  result = api_instance.get_team_member(identifier)
  p result
rescue SendX::ApiError => e
  puts "Error when calling TeamMemberApi->get_team_member: #{e}"
end
```

#### Using the get_team_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestRMember>, Integer, Hash)> get_team_member_with_http_info(identifier)

```ruby
begin
  # Get a team member by ID
  data, status_code, headers = api_instance.get_team_member_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestRMember>
rescue SendX::ApiError => e
  puts "Error when calling TeamMemberApi->get_team_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Resource identifier with prefix (e.g., &#x60;contact_BnKjkbBBS500CoBCP0oChQ&#x60;)  **Format:** &#x60;&lt;prefix&gt;_&lt;22-character-id&gt;&#x60;  |  |

### Return type

[**RestRMember**](RestRMember.md)

### Authorization

[TeamApiKey](../README.md#TeamApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

