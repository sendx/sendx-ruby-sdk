# SendX::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Unique identifier for the created event. | [optional] |
| **status** | **String** | Status of the event creation (e.g., &#39;success&#39;). | [optional] |
| **message** | **String** | Additional message about the event creation. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::EventResponse.new(
  event_id: m3m2k3mnkjn23nkj3,
  status: success,
  message: Event created successfully.
)
```

