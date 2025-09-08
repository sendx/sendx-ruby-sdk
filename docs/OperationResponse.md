# SendX::OperationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the response. | [optional] |
| **message** | **String** | A message indicating the result of the operation. | [optional] |
| **data** | **String** | Additional data associated with the response. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::OperationResponse.new(
  status: null,
  message: null,
  data: null
)
```

