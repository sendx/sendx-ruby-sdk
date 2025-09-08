# SendX::RestRTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique tag identifier with tag_ prefix | [optional] |
| **name** | **String** | Tag name | [optional] |
| **created** | **Time** | Tag creation timestamp | [optional] |
| **updated** | **Time** | Tag last update timestamp | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRTag.new(
  id: tag_abc123def456ghi789,
  name: VIP Customer,
  created: 2024-01-20T10:30:00Z,
  updated: 2024-01-20T10:30:00Z
)
```

