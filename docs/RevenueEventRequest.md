# SendX::RevenueEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Unique identifier for the contact. |  |
| **amount** | **Float** | Recognized revenue amount associated with the event. |  |
| **currency** | **String** | Currency code (ISO 4217) for the revenue (e.g., &#39;USD&#39;, &#39;EUR&#39;, &#39;INR&#39;). |  |
| **source** | **String** | Source of the revenue (e.g., &#39;website&#39;, &#39;mobile app&#39;, &#39;partner referral&#39;). |  |
| **time** | **Integer** | Unix timestamp indicating when the revenue event occurred. |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RevenueEventRequest.new(
  identifier: john.doe@example.com,
  amount: 123.23,
  currency: INR,
  source: app,
  time: 1669990400
)
```

