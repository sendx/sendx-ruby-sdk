# SendX::CampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the campaign. | [optional] |
| **html_code** | **String** | The HTML code of the campaign. | [optional] |
| **subject** | **String** | The subject of the campaign. | [optional] |
| **sender** | **String** | Sender unique identifier. | [optional] |
| **preview_text** | **String** | The preview text shown in email clients. | [optional] |
| **schedule_type** | **Integer** | The type of scheduling for the campaign &lt;br&gt; 0: Send Now &lt;br&gt; 1: Send Later  | [optional] |
| **schedule_condition** | **String** | The condition for scheduling the campaign. | [optional] |
| **time_condition** | **String** | The specific time to send the campaign. | [optional] |
| **timezone** | **String** | The timezone for the campaign scheduling. | [optional] |
| **preferred_timezone** | **String** | Preferred timezone for scheduling. | [optional] |
| **preferred_time_condition** | **String** | Specific time preference for sending the campaign. | [optional] |
| **send_in_contacts_timezone** | **Boolean** | Whether to send emails in each contact&#39;s timezone. | [optional] |
| **smart_send** | **Boolean** | Whether to enable smart send features (e.g., optimizing send time). | [optional] |
| **included_segments** | **Array&lt;String&gt;** | List of segment IDs to include. | [optional] |
| **included_lists** | **Array&lt;String&gt;** | List of list IDs to include. | [optional] |
| **included_tags** | **Array&lt;String&gt;** | List of tag IDs to include. | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | List of segment IDs to exclude. | [optional] |
| **excluded_lists** | **Array&lt;String&gt;** | List of list IDs to exclude. | [optional] |
| **excluded_tags** | **Array&lt;String&gt;** | List of tag IDs to exclude. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::CampaignRequest.new(
  name: New Year Promotion,
  html_code: &lt;html&gt;&lt;body&gt;&lt;h1&gt;Happy New Year!&lt;/h1&gt;&lt;/body&gt;&lt;/html&gt;,
  subject: New Year Offer,
  sender: sender_123,
  preview_text: Exclusive New Year promotions inside,
  schedule_type: 1,
  schedule_condition: 2025-01-21,
  time_condition: 10:00 AM,
  timezone: America/New_York,
  preferred_timezone: America/Los_Angeles,
  preferred_time_condition: Send at 9 AM,
  send_in_contacts_timezone: true,
  smart_send: true,
  included_segments: [&quot;segment_1&quot;,&quot;segment_2&quot;],
  included_lists: [&quot;list_1&quot;,&quot;list_2&quot;],
  included_tags: [&quot;tag_1&quot;,&quot;tag_2&quot;],
  excluded_segments: [&quot;segment_3&quot;],
  excluded_lists: [&quot;list_3&quot;],
  excluded_tags: [&quot;tag_3&quot;]
)
```

