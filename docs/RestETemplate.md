# SendX::RestETemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Template name |  |
| **subject** | **String** | Email subject line |  |
| **html_content** | **String** | HTML email content | [optional] |
| **text_content** | **String** | Plain text content | [optional] |
| **preheader** | **String** | Preview text | [optional] |
| **tags** | **Array&lt;String&gt;** | Template tags for organization | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestETemplate.new(
  name: Welcome Email Template,
  subject: Welcome to {{company_name}}!,
  html_content: null,
  text_content: null,
  preheader: null,
  tags: null
)
```

