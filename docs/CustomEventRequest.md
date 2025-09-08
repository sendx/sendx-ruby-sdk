# SendX::CustomEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | This is the contact identifier. Contact id and email can be used interchangeably.  | [optional] |
| **name** | **String** | Event name |  |
| **data** | **Hash&lt;String, Object&gt;** | Event data | [optional] |
| **time** | **Integer** | Unix timestamp (in seconds since January 1, 1970) representing when the event occurred. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::CustomEventRequest.new(
  identifier: user@example.com,
  name: video_watched,
  data: {video_id&#x3D;12345, duration&#x3D;120, completed&#x3D;true},
  time: 1669990400
)
```

