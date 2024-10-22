# SendX::Sender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the sender |  |
| **name** | **String** | Name of the sender |  |
| **email** | **String** | Email address of the sender |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::Sender.new(
  id: sender_123,
  name: Linus,
  email: linus@linux.org
)
```

