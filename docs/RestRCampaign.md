# SendX::RestRCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Encrypted ID of the campaign | [optional] |
| **name** | **String** | Internal campaign name |  |
| **subject** | **String** | Email subject line |  |
| **preheader** | **String** | Email preview text | [optional] |
| **sender** | **String** | Sender id |  |
| **html_content** | **String** | HTML email content | [optional] |
| **text_content** | **String** | Plain text email content | [optional] |
| **schedule_type** | **Integer** | Campaign scheduling type.  **Values:** - &#x60;0&#x60; - Schedule later - &#x60;1&#x60; - Send Now  | [default to 0] |
| **schedule_condition** | **String** | datetime for scheduled campaigns (required if scheduleType&#x3D;1) |  |
| **time_condition** | **String** | Time-related condition for the campaign | [optional] |
| **timezone** | **String** | Campaign timezone | [optional] |
| **smart_send** | **Boolean** | Timezone for the scheduled send | [optional] |
| **send_in_contacts_timezone** | **Boolean** | Send at specified time in each contact&#39;s timezone | [optional] |
| **preferred_time_condition** | **String** | Preferred time condition, in case of smartSend and sendInContactTimeZone | [optional] |
| **preferred_timezone** | **String** | Preferred timezone for smart send optimization | [optional] |
| **strategy** | **String** | Campaign delivery strategy | [optional] |
| **included_segments** | **Array&lt;String&gt;** | Included segment IDs | [optional] |
| **included_lists** | **Array&lt;String&gt;** | Included list IDs with prefix |  |
| **included_tags** | **Array&lt;String&gt;** | Included tag IDs with prefix | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | Excluded segment IDs | [optional] |
| **excluded_lists** | **Array&lt;String&gt;** | Excluded list IDs with prefix |  |
| **excluded_tags** | **Array&lt;String&gt;** | Excluded tag IDs with prefix | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRCampaign.new(
  id: campaign_6h8DnYrHt4KktCnG8PDO5Z,
  name: Summer Sale 2024,
  subject: 🌞 Summer Sale - 50% Off Everything!,
  preheader: Limited time offer - Shop now!,
  sender: sender_4vK3WFhMgvOwUNyaL4QxCD,
  html_content: null,
  text_content: null,
  schedule_type: null,
  schedule_condition: 2024-12-30,
  time_condition: 9:00 AM,
  timezone: America/New_York,
  smart_send: America/New_York,
  send_in_contacts_timezone: true,
  preferred_time_condition: 10:00 AM,
  preferred_timezone: America/Los_Angeles,
  strategy: Batch Sending,
  included_segments: [segment_engaged_30_days],
  included_lists: [list_vUCjsUmrVXtSppS8rD0Ssq, list_0tOFLp5RgV7s3LNiHrjGYs],
  included_tags: [tag_6GN4DNyrHNt4KktCNG8PDO, tag_UhsDkjL772Qbj5lWtT62VK],
  excluded_segments: [],
  excluded_lists: [list_Mn7Op8Qr9St0Uv1Wx2Yz3A],
  excluded_tags: [tag_Bv4Wq9Xp6Zn5Ly0Kt8JhQe],
  created: null,
  updated: null
)
```

