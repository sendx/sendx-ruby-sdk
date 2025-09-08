# SendX::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook ID | [optional] |
| **enabled** | **Boolean** | Indicates whether the webhook is enabled. | [optional] |
| **url** | **String** | The URL where webhook events will be sent. | [optional] |
| **unsubscribed** | **Boolean** | Indicates if the webhook unsubscribes users. | [optional] |
| **dropped** | **Boolean** | Indicates if the webhook processes dropped events. | [optional] |
| **bounced** | **Boolean** | Indicates if the webhook processes bounced events. | [optional] |
| **marked_spam** | **Boolean** | Indicates if the webhook processes marked-as-spam events. | [optional] |
| **clicked** | **Boolean** | Indicates if the webhook processes click events. | [optional] |
| **opened** | **Boolean** | Indicates if the webhook processes open events. | [optional] |
| **created** | **Integer** | Timestamp of when the webhook was created. In Unix time format. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::Webhook.new(
  id: webhook_123,
  enabled: true,
  url: https://example.com/webhook,
  unsubscribed: true,
  dropped: true,
  bounced: true,
  marked_spam: true,
  clicked: true,
  opened: true,
  created: 1669990400
)
```

