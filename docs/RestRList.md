# SendX::RestRList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **Integer** | List type.  **Values:** - &#x60;0&#x60; - Regular list (single opt-in) - &#x60;1&#x60; - Double opt-in list (requires email confirmation)  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRList.new(
  id: list_OcuxJHdiAvujmwQVJfd3ss,
  name: Newsletter Subscribers,
  type: null,
  created: null,
  updated: null
)
```

