# SendX::CampaignDashboardData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier for the campaign. | [optional] |
| **name** | **String** | Name of the campaign. | [optional] |
| **subject** | **String** | Subject of the campaign. | [optional] |
| **sent_time** | **Time** | The time the campaign was sent. | [optional] |
| **campaign_screenshot_url** | **String** | URL to a screenshot of the campaign. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::CampaignDashboardData.new(
  id: 1,
  name: Weekly Newsletter,
  subject: This Week&#39;s Highlights,
  sent_time: 2024-09-30T14:00Z,
  campaign_screenshot_url: http://example.com/screenshot.png
)
```

