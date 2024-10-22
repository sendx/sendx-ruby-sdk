# SendX::ReportData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The ID of the campaign | [optional] |
| **link_stats** | **Hash&lt;String, Integer&gt;** | Statistics about the links clicked within the campaign | [optional] |
| **clicked_contact_count** | **Integer** | The total number of contacts that clicked on any link | [optional] |
| **opened_contact_count** | **Integer** | The total number of contacts that opened the campaign email | [optional] |
| **replied_contact_count** | **Integer** | The total number of contacts that replied to the campaign email | [optional] |
| **clicked_unique_contact_count** | **Integer** | The unique number of contacts that clicked on any link | [optional] |
| **opened_unique_contact_count** | **Integer** | The unique number of contacts that opened the campaign email | [optional] |
| **replied_unique_contact_count** | **Integer** | The unique number of contacts that replied to the campaign email | [optional] |
| **sent_contact_count** | **Integer** | The total number of contacts the campaign was sent to | [optional] |
| **unsubscribe_contact_count** | **Integer** | The total number of contacts that unsubscribed | [optional] |
| **bounce_contact_count** | **Integer** | The total number of bounced contacts | [optional] |
| **spam_contact_count** | **Integer** | The total number of contacts that marked the email as spam | [optional] |
| **email_revenue** | **String** | The total revenue generated from the campaign email | [optional] |
| **revenue_per_recipient** | **String** | The average revenue generated per recipient | [optional] |
| **currency** | **String** | The currency in which the revenue is measured | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::ReportData.new(
  campaign_id: sendx123,
  link_stats: {&quot;www.example.com&quot;:123},
  clicked_contact_count: 230,
  opened_contact_count: 345,
  replied_contact_count: 12,
  clicked_unique_contact_count: 210,
  opened_unique_contact_count: 320,
  replied_unique_contact_count: 11,
  sent_contact_count: 500,
  unsubscribe_contact_count: 10,
  bounce_contact_count: 5,
  spam_contact_count: 2,
  email_revenue: $5000,
  revenue_per_recipient: $10,
  currency: USD
)
```

