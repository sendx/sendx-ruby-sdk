# SendX::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether the webhook is enabled. | [optional] |
| **url** | **String** | The URL where webhook events will be sent. | [optional] |
| **unsubscribed** | **Boolean** | Indicates if the webhook unsubscribes users. | [optional] |
| **dropped** | **Boolean** | Indicates if the webhook processes dropped events. | [optional] |
| **bounced** | **Boolean** | Indicates if the webhook processes bounced events. | [optional] |
| **marked_spam** | **Boolean** | Indicates if the webhook processes marked-as-spam events. | [optional] |
| **clicked** | **Boolean** | Indicates if the webhook processes click events. | [optional] |
| **opened** | **Boolean** | Indicates if the webhook processes open events. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::WebhookRequest.new(
  enabled: true,
  url: https://example.com/webhook,
  unsubscribed: false,
  dropped: false,
  bounced: false,
  marked_spam: false,
  clicked: false,
  opened: false
)
```

