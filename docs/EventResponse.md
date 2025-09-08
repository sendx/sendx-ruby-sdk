# SendX::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::EventResponse.new(
  status: success,
  message: Event tracked successfully
)
```

