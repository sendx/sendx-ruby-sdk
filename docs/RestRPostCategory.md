# SendX::RestRPostCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id for the post category | [optional] |
| **name** | **String** | Name for the post category | [optional] |
| **created** | **Time** | Date and time when the post category was created | [optional] |
| **updated** | **Time** | Date and time when the post category was last updated | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRPostCategory.new(
  id: post_category_YzS1wOU20yw87UUHKxMzwn,
  name: Product Updates,
  created: null,
  updated: null
)
```

