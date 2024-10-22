# SendX::LastSentCampaignStat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign** | [**CampaignDashboardData**](CampaignDashboardData.md) |  | [optional] |
| **sent** | **Integer** | Number of emails sent. | [optional] |
| **delivered** | **Integer** | Number of emails delivered. | [optional] |
| **subscribed** | **Integer** | Number of new subscriptions. | [optional] |
| **unsubscribed** | **Integer** | Number of unsubscribes. | [optional] |
| **open** | **Integer** | Number of emails opened. | [optional] |
| **link_clicked** | **Integer** | Number of link clicks. | [optional] |
| **replied** | **Integer** | Number of replies received. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::LastSentCampaignStat.new(
  campaign: null,
  sent: 100,
  delivered: 90,
  subscribed: 10,
  unsubscribed: 5,
  open: 50,
  link_clicked: 20,
  replied: 3
)
```

