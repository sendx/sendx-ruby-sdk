# SendX::TrackRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_tags** | **Array&lt;String&gt;** | Tags to add to contact | [optional] |
| **remove_tags** | **Array&lt;String&gt;** | Tags to remove from contact | [optional] |
| **email** | **String** | Email address of the contact | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::TrackRequest.new(
  add_tags: null,
  remove_tags: null,
  email: test@example.com
)
```

