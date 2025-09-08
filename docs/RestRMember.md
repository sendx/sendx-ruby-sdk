# SendX::RestRMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **full_name** | **String** |  | [optional] |
| **avatar_url** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRMember.new(
  id: member_JkL012MnO345PqR678,
  email: team.member@company.com,
  user_name: johndoe,
  full_name: John Doe,
  avatar_url: https://example.com/avatar.jpg,
  created: null,
  updated: null
)
```

