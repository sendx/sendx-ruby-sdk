# SendX::PostbackResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::PostbackResponse.new(
  success: true,
  message: Event tracked via postback
)
```

