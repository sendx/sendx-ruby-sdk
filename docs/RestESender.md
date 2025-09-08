# SendX::RestESender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Sender display name |  |
| **email** | **String** | Sender email address (must be verified) |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestESender.new(
  name: John Smith,
  email: john@example.com
)
```

