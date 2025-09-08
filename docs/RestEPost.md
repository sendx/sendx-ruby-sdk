# SendX::RestEPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Internal post name |  |
| **post_title** | **String** | Public post title |  |
| **post_description** | **String** | Post excerpt/description | [optional] |
| **post_category** | **String** | Category ID (with or without prefix) | [optional] |
| **member** | **String** | Author member ID | [optional] |
| **post_thumbnail** | **String** | Thumbnail image URL | [optional] |
| **post_html** | **String** | Post HTML content | [optional] |
| **post_template** | **String** | Post template | [optional] |
| **is_published** | **Boolean** | Publication status | [optional][default to false] |
| **included_tags** | **Array&lt;String&gt;** | Post tag IDs | [optional] |
| **editor_type** | **Integer** | Editor type used | [optional][default to 1] |
| **post_slug** | **String** | URL slug | [optional] |
| **status** | **Integer** | Post status | [optional][default to 1] |
| **page_title** | **String** | SEO page title | [optional] |
| **page_description** | **String** | SEO meta description | [optional] |
| **page_keywords** | **String** | SEO keywords | [optional] |
| **social_title** | **String** | Social media title | [optional] |
| **social_description** | **String** | Social media description | [optional] |
| **social_image_url** | **String** | Social media image URL | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestEPost.new(
  name: Summer Product Launch,
  post_title: Introducing Our New Summer Collection,
  post_description: null,
  post_category: post_category_YzS1wOU20yw87UUHKxMzwn,
  member: member_JkL012MnO345PqR678,
  post_thumbnail: null,
  post_html: null,
  post_template: null,
  is_published: null,
  included_tags: null,
  editor_type: null,
  post_slug: introducing-summer-collection,
  status: null,
  page_title: null,
  page_description: null,
  page_keywords: null,
  social_title: null,
  social_description: null,
  social_image_url: null
)
```

