# SendX::Campaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Encrypted ID of the campaign | [optional] |
| **name** | **String** | Name of the campaign | [optional] |
| **track_reply** | **Boolean** | Indicates if replies to the campaign should be tracked | [optional] |
| **status** | **Integer** | Campaign status: 0 (Draft), 1 (Scheduled), 2 (Sending), 3 (Sent), 4 (Quarantined) | [optional] |
| **schedule_type** | **Integer** | Schedule type: 0 (Schedule later), 1 (Send Now), 2 (Trigger via automation), 3 (Recurring) | [optional] |
| **schedule_condition** | **String** | Condition for scheduling the campaign | [optional] |
| **time_condition** | **String** | Time-related condition for the campaign | [optional] |
| **timezone** | **String** | Timezone for the scheduled send | [optional] |
| **preferred_time_condition** | **String** | Preferred time condition for the campaign | [optional] |
| **preferred_timezone** | **String** | Preferred timezone for sending the campaign | [optional] |
| **strategy** | **String** | Strategy for the campaign | [optional] |
| **send_in_contacts_timezone** | **Boolean** | Indicates if the campaign should be sent in the recipient&#39;s timezone | [optional] |
| **smart_send** | **Boolean** | Indicates if smart sending should be used | [optional] |
| **is_archived** | **Boolean** | Indicates if the campaign is archived | [optional] |
| **sender** | **String** | Information about the sender of the campaign | [optional] |
| **campaign_screenshot_url** | **String** | URL of the campaign&#39;s screenshot | [optional] |
| **included_segments** | **Array&lt;String&gt;** | Segments to be included in the campaign | [optional] |
| **included_lists** | **Array&lt;String&gt;** | Lists to be included in the campaign | [optional] |
| **included_tags** | **Array&lt;String&gt;** | Tags to be included in the campaign | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | Segments to be excluded from the campaign | [optional] |
| **excluded_lists** | **Array&lt;String&gt;** | Lists to be excluded from the campaign | [optional] |
| **excluded_tags** | **Array&lt;String&gt;** | Tags to be excluded from the campaign | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::Campaign.new(
  id: campaign123xyz,
  name: New Year Promotion,
  track_reply: false,
  status: 1,
  schedule_type: 0,
  schedule_condition: Send at a specific time,
  time_condition: Send at 9:00 AM,
  timezone: America/New_York,
  preferred_time_condition: Send during work hours,
  preferred_timezone: America/Los_Angeles,
  strategy: Batch sending,
  send_in_contacts_timezone: true,
  smart_send: false,
  is_archived: false,
  sender: marketing@company.com,
  campaign_screenshot_url: https://example.com/screenshot.png,
  included_segments: [&quot;VIP Customers&quot;,&quot;New Subscribers&quot;],
  included_lists: [&quot;List 1&quot;,&quot;List 2&quot;],
  included_tags: [&quot;Tag 1&quot;,&quot;Tag 2&quot;],
  excluded_segments: [&quot;Unsubscribed Users&quot;,&quot;Bounced Emails&quot;],
  excluded_lists: [&quot;List 3&quot;,&quot;List 4&quot;],
  excluded_tags: [&quot;Tag 3&quot;,&quot;Tag 4&quot;]
)
```

