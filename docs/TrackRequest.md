# SendX::TrackRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the contact to track. | [optional] |
| **add_tags** | **Array&lt;String&gt;** |  | [optional] |
| **remove_tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::TrackRequest.new(
  email: user@example.com,
  add_tags: [&quot;new&quot;,&quot;cool&quot;],
  remove_tags: [&quot;old&quot;,&quot;bad&quot;]
)
```

