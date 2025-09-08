# SendX::RestECampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Campaign name for internal organization |  |
| **subject** | **String** | Email subject line with personalization support.  **Features:** - Supports template variables ({{contact.firstName}}) - Emoji support for better engagement - A/B testing variations supported  |  |
| **sender** | **String** | Sender identifier.  **Note:** Sender must be verified before use  |  |
| **html_code** | **String** | HTML content of the email campaign |  |
| **preview_text** | **String** | Preview text shown in email clients | [optional] |
| **plain_text** | **String** | Plain text version for better deliverability | [optional] |
| **schedule_type** | **Integer** | Campaign scheduling type.  **Values:** - &#x60;0&#x60; - Schedule for specific date/time - &#x60;1&#x60; - Send immediately  | [optional] |
| **schedule_condition** | **String** | datetime for scheduled campaigns (required if scheduleType&#x3D;0) | [optional] |
| **time_condition** | **String** | Time condition for scheduled campaigns in HH:MM PM/AM format | [optional] |
| **timezone** | **String** | Timezone for scheduled campaigns (IANA format) | [optional] |
| **preferred_timezone** | **String** | Preferred timezone for smart send optimization (required for smartSend and sendInContactsTimezone) | [optional] |
| **preferred_time_condition** | **String** | Preferred time optimization setting (required for smartSend and sendInContactsTimezone) | [optional] |
| **send_in_contacts_timezone** | **Boolean** | Send at specified time in each contact&#39;s timezone | [optional] |
| **smart_send** | **Boolean** | Enable AI-powered send time optimization | [optional] |
| **included_segments** | **Array&lt;String&gt;** | Segment IDs to include | [optional] |
| **included_lists** | **Array&lt;String&gt;** | List IDs to include | [optional] |
| **included_tags** | **Array&lt;String&gt;** | Tag IDs to include | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | Segment IDs to exclude | [optional] |
| **excluded_lists** | **Array&lt;String&gt;** | List IDs to exclude | [optional] |
| **excluded_tags** | **Array&lt;String&gt;** | Tag IDs to exclude (prefix automatically stripped) | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestECampaign.new(
  name: Spring Sale Campaign,
  subject: 🌸 Spring Sale - {{contact.firstName}}, Save 30%!,
  sender: sender_4vK3WFhMgvOwUNyaL4QxCD,
  html_code: &lt;html&gt;&lt;body&gt;&lt;h1&gt;Spring Sale!&lt;/h1&gt;&lt;p&gt;Save 30% on all items&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;,
  preview_text: Limited time offer - 30% off everything!,
  plain_text: Spring Sale!

Save 30% on all items...,
  schedule_type: 0,
  schedule_condition: 2024-03-20,
  time_condition: 9:00 AM,
  timezone: America/New_York,
  preferred_timezone: America/Los_Angeles,
  preferred_time_condition: 10:00 AM,
  send_in_contacts_timezone: true,
  smart_send: true,
  included_segments: [segment_v3nooFn4M423mFomfml4P],
  included_lists: [list_vUCjsUmrVXtSppS8rD0Ssq],
  included_tags: [tag_6GN4DNyrHNt4KktCNG8PDO],
  excluded_segments: [segment_v3nooFn4M423mFomfml4P],
  excluded_lists: [list_0tOFLp5RgV7s3LNiHrjGYs],
  excluded_tags: [tag_Bv4Wq9Xp6Zn5Ly0Kt8JhQe]
)
```

