# SendX::RestReportData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique identifier of the campaign | [optional] |
| **link_stats** | [**Array&lt;LinkStat&gt;**](LinkStat.md) |  | [optional] |
| **clicked_unique_contact_count** | **Integer** | Total number of unique contacts who clicked on the link | [optional] |
| **opened_unique_contact_count** | **Integer** | Total number of unique contacts who opened the link | [optional] |
| **sent_contact_count** | **Integer** | Total number of contacts who sent the link | [optional] |
| **unsubscribe_contact_count** | **Integer** | Total number of contacts who unsubscribed from the link | [optional] |
| **bounce_contact_count** | **Integer** | Total number of contacts who bounced the link | [optional] |
| **spam_contact_count** | **Integer** | Total number of contacts who marked the link as spam | [optional] |
| **clicked_contact_count** | **Integer** | Total number of contacts who clicked on the link | [optional] |
| **opened_contact_count** | **Integer** | Total number of contacts who opened the link | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestReportData.new(
  campaign_id: campaign_6h8DnYrHt4KktCnG8PDO5Z,
  link_stats: null,
  clicked_unique_contact_count: 10,
  opened_unique_contact_count: 14,
  sent_contact_count: 20,
  unsubscribe_contact_count: 5,
  bounce_contact_count: 3,
  spam_contact_count: 2,
  clicked_contact_count: 10,
  opened_contact_count: 14
)
```

