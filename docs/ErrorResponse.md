# SendX::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **message** | **String** | Human-readable error message |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::ErrorResponse.new(
  status: error,
  message: Invalid request format
)
```

