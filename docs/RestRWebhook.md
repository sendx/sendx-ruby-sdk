# SendX::RestRWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **url** | **String** | Webhook endpoint URL | [optional] |
| **enabled** | **Boolean** | Whether webhook is enabled | [optional][default to true] |
| **unsubscribed** | **Boolean** | Trigger webhook when a contact unsubscribes | [optional][default to false] |
| **dropped** | **Boolean** | Trigger webhook when an email is dropped | [optional][default to false] |
| **bounced** | **Boolean** | Trigger webhook when an email bounces | [optional][default to false] |
| **marked_spam** | **Boolean** | Trigger webhook when an email is marked as spam | [optional][default to false] |
| **clicked** | **Boolean** | Trigger webhook when a link in the email is clicked | [optional][default to false] |
| **opened** | **Boolean** | Trigger webhook when an email is opened | [optional][default to false] |
| **contact_created** | **Boolean** | Trigger webhook when a new contact is created | [optional][default to false] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRWebhook.new(
  id: webhook_9l154iiXlZoPo7vngmamee,
  url: https://api.example.com/webhooks/sendx,
  enabled: null,
  unsubscribed: null,
  dropped: null,
  bounced: null,
  marked_spam: null,
  clicked: null,
  opened: null,
  contact_created: null
)
```

