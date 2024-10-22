# SendX::SenderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the sender |  |
| **email** | **String** | Email address of the sender |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::SenderRequest.new(
  name: Linus,
  email: linus@linux.org
)
```

