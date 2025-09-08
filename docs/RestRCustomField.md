# SendX::RestRCustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique field identifier with field_ prefix | [optional] |
| **name** | **String** | Custom field name | [optional] |
| **type** | **Integer** | Field data type.  **Values:** - &#x60;0&#x60; - Text (max 255 characters) - &#x60;1&#x60; - Number (integer or decimal) - &#x60;2&#x60; - Date (YYYY-MM-DD format) - &#x60;3&#x60; - Boolean (true/false) - &#x60;4&#x60; - Phone number (international format)  | [optional] |
| **description** | **String** | Field description for documentation | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRCustomField.new(
  id: custom_field_abc123def456ghi789,
  name: Account Type,
  type: null,
  description: Customer account classification
)
```

