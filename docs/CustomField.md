# SendX::CustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Encrypted ID of the custom field. | [optional] |
| **name** | **String** | Name of the custom field. | [optional] |
| **type** | **Integer** | Type of the custom field. | [optional] |
| **description** | **String** | Description of the custom field. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::CustomField.new(
  id: encrypted-id-123,
  name: Custom Field Example,
  type: 0,
  description: An example custom field
)
```

