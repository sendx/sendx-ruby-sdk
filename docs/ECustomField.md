# SendX::ECustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the custom field. | [optional] |
| **type** | **Integer** | Type of the custom field. | [optional] |
| **shown** | **Boolean** | Whether the custom field is shown. | [optional] |
| **is_shareable** | **Boolean** | Whether the custom field is shareable. | [optional] |
| **description** | **String** | Description of the custom field. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::ECustomField.new(
  name: Custom Field Example,
  type: 0,
  shown: true,
  is_shareable: false,
  description: An example custom field
)
```

