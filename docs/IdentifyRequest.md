# SendX::IdentifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **new_email** | **String** | New email when updating existing contact | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::IdentifyRequest.new(
  email: null,
  first_name: null,
  last_name: null,
  company: null,
  custom_fields: null,
  tags: null,
  new_email: null
)
```

