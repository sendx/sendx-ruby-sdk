# SendX::SenderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Encrypted ID of the sender |  |
| **name** | **String** | Name of the sender |  |
| **email** | **String** | Email address of the sender |  |
| **is_whitelisted** | **Boolean** | Indicates if the sender is whitelisted |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::SenderResponse.new(
  id: null,
  name: null,
  email: null,
  is_whitelisted: null
)
```

