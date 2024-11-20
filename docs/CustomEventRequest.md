# SendX::CustomEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the custom event (e.g., &#39;abandoned_cart&#39;). |  |
| **identifier** | **String** | Unique identifier for the contact (e.g., contact&#39;s email). |  |
| **data** | **Hash&lt;String, String&gt;** | Map of property-value pairs associated with the event, where both key and value are strings. |  |
| **time** | **Integer** | Unix timestamp of when the event occurred. |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::CustomEventRequest.new(
  name: abandoned_cart,
  identifier: john.doe@example.com,
  data: {&quot;price&quot;:&quot;29.99&quot;,&quot;currency&quot;:&quot;USD&quot;,&quot;item_count&quot;:&quot;3&quot;},
  time: 1669990400
)
```

