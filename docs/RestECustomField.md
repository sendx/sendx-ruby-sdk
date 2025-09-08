# SendX::RestECustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Custom field name (must be unique within team) |  |
| **type** | **Integer** | Field data type.  **Values:** - &#x60;0&#x60; - Text (max 255 characters) - &#x60;1&#x60; - Number (integer or decimal) - &#x60;2&#x60; - Date (YYYY-MM-DD format) - &#x60;3&#x60; - Boolean (true/false) - &#x60;4&#x60; - Phone number (international format)  |  |
| **description** | **String** | Field description for documentation | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestECustomField.new(
  name: Account Type,
  type: null,
  description: Customer account classification
)
```

