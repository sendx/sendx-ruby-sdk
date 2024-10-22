# SendX::DashboardStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_email_campaign_stat** | [**LastSentCampaignStat**](LastSentCampaignStat.md) |  | [optional] |
| **newsletter_count** | **Integer** | Number of newsletters sent. | [optional] |
| **automation_count** | **Integer** | Number of automations set up. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::DashboardStats.new(
  last_email_campaign_stat: null,
  newsletter_count: 10,
  automation_count: 5
)
```

