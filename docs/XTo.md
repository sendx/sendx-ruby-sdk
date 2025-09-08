# SendX::XTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **cc** | **Array&lt;String&gt;** |  | [optional] |
| **bcc** | **Array&lt;String&gt;** |  | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::XTo.new(
  email: to@example.com,
  name: To Name,
  cc: null,
  bcc: null,
  custom_fields: null
)
```

