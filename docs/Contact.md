# SendX::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier for the contact. | [optional] |
| **first_name** | **String** | The first name of the contact. | [optional] |
| **last_name** | **String** | The last name of the contact. | [optional] |
| **email** | **String** | The email address of the contact. | [optional] |
| **company** | **String** | The company of the contact. | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | Custom fields and their values | [optional] |
| **unsubscribed** | **Boolean** | Indicates if the contact has unsubscribed from emails. | [optional] |
| **bounced** | **Boolean** | Indicates if the contact&#39;s email has bounced. | [optional] |
| **spam** | **Boolean** | Indicates if the contact marked the email as spam. | [optional] |
| **created** | **Time** | The date and time when the contact was created. | [optional] |
| **updated** | **Time** | The date and time when the contact was last updated. | [optional] |
| **blocked** | **Boolean** | Indicates if the contact is blocked from receiving emails. | [optional] |
| **dropped** | **Boolean** | Indicates if emails to this contact were dropped. | [optional] |
| **ltv** | **Integer** | Lifetime value (LTV) of the contact in currency units. | [optional] |
| **contact_source** | **Integer** | The source from which the contact was added. Possible values:  | [optional] |
| **last_tracked_ip** | **String** | The last known IP address tracked for the contact. | [optional] |
| **lists** | **Array&lt;String&gt;** | A list of &#x60;lists&#x60; ids the contact is subscribed to. | [optional] |
| **tags** | **Array&lt;String&gt;** | &#x60;Tag&#x60; ids associated with the contact for segmentation or categorization. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::Contact.new(
  id: a1b2c3d4e5,
  first_name: Jane,
  last_name: Doe,
  email: jane.doe@example.com,
  company: Tech Solutions Inc.,
  custom_fields: {&quot;1&quot;:&quot;VIP&quot;,&quot;2&quot;:&quot;Special Offer Subscriber&quot;},
  unsubscribed: false,
  bounced: false,
  spam: false,
  created: 2024-10-08T09:30Z,
  updated: 2024-10-08T12:45Z,
  blocked: false,
  dropped: false,
  ltv: 5000,
  contact_source: 8,
  last_tracked_ip: 192.168.0.1,
  lists: [&quot;sendx123&quot;,&quot;sendx233&quot;],
  tags: [&quot;223&quot;,&quot;3232&quot;]
)
```

