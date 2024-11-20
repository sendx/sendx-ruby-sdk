# SendX::IdentifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the contact. | [optional] |
| **last_name** | **String** | Last name of the contact. | [optional] |
| **email** | **String** | Email address of the contact. |  |
| **new_email** | **String** | New email address of the contact. | [optional] |
| **company** | **String** | Company of the contact. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::IdentifyRequest.new(
  first_name: John,
  last_name: Doe,
  email: user@example.com,
  new_email: user@example.com,
  company: Acme Inc.,
  tags: [&quot;new&quot;,&quot;cool&quot;],
  custom_fields: {&quot;favorite_color&quot;:&quot;blue&quot;,&quot;favorite_food&quot;:&quot;pizza&quot;}
)
```

