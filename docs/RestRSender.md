# SendX::RestRSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique sender identifier with sender_ prefix | [optional] |
| **name** | **String** | Sender display name | [optional] |
| **email** | **String** | Sender email address | [optional] |
| **is_whitelisted** | **Boolean** | Sender whitelist status | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRSender.new(
  id: sender_4vK3WFhMgvOwUNyaL4QxCD,
  name: John Smith,
  email: john@example.com,
  is_whitelisted: true
)
```

