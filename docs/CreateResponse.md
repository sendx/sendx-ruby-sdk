# SendX::CreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **success** | **Boolean** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::CreateResponse.new(
  id: sendx123,
  name: My New Resource,
  success: true
)
```

