# SendX::ContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address of the contact. Must be a valid email. | [optional] |
| **first_name** | **String** | The first name of the contact. | [optional] |
| **last_name** | **String** | The last name of the contact. | [optional] |
| **company** | **String** | The company where the contact works. | [optional] |
| **last_tracked_ip** | **String** | The last known IP address of the contact. | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | Custom fields specific to the contact, which may vary by account. | [optional] |
| **lists** | **Array&lt;String&gt;** | A list of &#x60;lists&#x60; ids the contact is subscribed to. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag ids associated with the contact for segmentation or categorization. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::ContactRequest.new(
  email: jane.doe@example.com,
  first_name: Jane,
  last_name: Doe,
  company: Tech Solutions Inc.,
  last_tracked_ip: 34.94.159.140,
  custom_fields: {&quot;1&quot;:&quot;VIP&quot;,&quot;2&quot;:&quot;Special Offer Subscriber&quot;},
  lists: [&quot;sendx123&quot;,&quot;sendx233&quot;],
  tags: [&quot;223&quot;,&quot;3232&quot;]
)
```

