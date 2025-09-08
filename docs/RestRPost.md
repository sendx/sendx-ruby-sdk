# SendX::RestRPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **post_title** | **String** |  | [optional] |
| **post_description** | **String** |  | [optional] |
| **post_category** | **String** |  | [optional] |
| **member** | **String** |  | [optional] |
| **post_thumbnail** | **String** |  | [optional] |
| **is_published** | **Boolean** |  | [optional] |
| **included_tags** | **Array&lt;String&gt;** |  | [optional] |
| **post_slug** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional] |
| **page_title** | **String** |  | [optional] |
| **page_description** | **String** |  | [optional] |
| **page_keywords** | **String** |  | [optional] |
| **social_title** | **String** |  | [optional] |
| **social_description** | **String** |  | [optional] |
| **social_image_url** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRPost.new(
  id: post_XyZ123aBc456DeF789GhI,
  name: Summer Product Launch,
  post_title: Introducing Our New Summer Collection,
  post_description: null,
  post_category: post_category_YzS1wOU20yw87UUHKxMzwn,
  member: member_JkL012MnO345PqR678,
  post_thumbnail: null,
  is_published: null,
  included_tags: null,
  post_slug: introducing-summer-collection,
  status: null,
  page_title: null,
  page_description: null,
  page_keywords: null,
  social_title: null,
  social_description: null,
  social_image_url: null,
  created: null,
  updated: null
)
```

