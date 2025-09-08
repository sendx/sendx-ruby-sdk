# SendX::LinkStat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The link clicked | [optional] |
| **count** | **Integer** | Total number of times the link was clicked | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::LinkStat.new(
  url: https://sendx.io,
  count: 10
)
```

