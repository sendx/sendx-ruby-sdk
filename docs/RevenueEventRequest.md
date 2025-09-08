# SendX::RevenueEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Contact email address |  |
| **amount** | **Float** | Revenue amount |  |
| **source** | **String** | Source of the revenue event | [optional] |
| **time** | **Integer** | Unix timestamp (in seconds since January 1, 1970) representing when the event occurred. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RevenueEventRequest.new(
  identifier: customer@example.com,
  amount: 99.99,
  source: website,
  time: 1669990400
)
```

