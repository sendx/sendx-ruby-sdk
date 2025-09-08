# SendX::MessageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::MessageResponse.new(
  status: success,
  message: Operation completed successfully
)
```

