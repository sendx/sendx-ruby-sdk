# SendX::WebhookObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **Integer** | The type of the event. | [optional] |
| **time** | **Integer** | The timestamp of the event in milliseconds since the epoch. | [optional] |
| **data** | **String** | Arbitrary data associated with the event. | [optional] |
| **provider_message_id** | **String** | Optional provider message ID. | [optional] |
| **campaign_id** | **String** | Optional campaign ID. | [optional] |
| **drip_step_id** | **String** | Optional drip step ID. | [optional] |
| **rss_exec_id** | **String** | Optional RSS execution ID. | [optional] |
| **tag_id** | **String** | Optional tag ID. | [optional] |
| **link** | **String** | Optional link associated with the event. | [optional] |
| **list_id** | **String** | Optional list ID. | [optional] |
| **contact_id** | **String** | Optional contact ID. | [optional] |
| **custom_field_id** | **String** | Optional custom field ID. | [optional] |
| **template_id** | **String** | Optional template ID. | [optional] |
| **popup_id** | **String** | Optional popup ID. | [optional] |
| **landing_page_id** | **String** | Optional landing page ID. | [optional] |
| **form_id** | **String** | Optional form ID. | [optional] |
| **segment_id** | **String** | Optional segment ID. | [optional] |
| **automation_id** | **String** | Optional automation ID. | [optional] |
| **drip_id** | **String** | Optional drip ID. | [optional] |
| **rss_id** | **String** | Optional RSS ID. | [optional] |
| **ab_test_id** | **String** | Optional A/B test ID. | [optional] |
| **workflow_id** | **String** | Optional workflow ID. | [optional] |
| **workflow_node_id** | **String** | Optional workflow node ID. | [optional] |
| **workflow_email_id** | **String** | Optional workflow email ID. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::WebhookObject.new(
  type: 7,
  time: 1686304219037565000,
  data: {&quot;key&quot;: &quot;value&quot;},
  provider_message_id: provider_message_id_123,
  campaign_id: campaign_id_123,
  drip_step_id: drip_step_id_123,
  rss_exec_id: rss_exec_id_123,
  tag_id: tag_id_123,
  link: https://example.com,
  list_id: list_id_123,
  contact_id: contact_id_123,
  custom_field_id: custom_field_id_123,
  template_id: template_id_123,
  popup_id: popup_id_123,
  landing_page_id: landing_page_id_123,
  form_id: form_id_123,
  segment_id: segment_id_123,
  automation_id: automation_id_123,
  drip_id: drip_id_123,
  rss_id: rss_id_123,
  ab_test_id: ab_test_id_123,
  workflow_id: workflow_id_123,
  workflow_node_id: workflow_node_id_123,
  workflow_email_id: workflow_email_id_123
)
```

