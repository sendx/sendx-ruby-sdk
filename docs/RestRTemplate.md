# SendX::RestRTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique template identifier with template_ prefix | [optional] |
| **name** | **String** | Name of the template | [optional] |
| **subject** | **String** | Email subject line (if applicable) | [optional] |
| **html_code** | **String** | HTML content of the template | [optional] |
| **template_code** | **String** | Template code for visual editors (JSON structure) | [optional] |
| **type** | **Integer** | Template type.  **Values:** - &#x60;0&#x60; - Email template - &#x60;1&#x60; - Other types  | [optional] |
| **thumbnail** | **String** | URL to template thumbnail image | [optional] |
| **editor_type** | **Integer** | Editor type used to create the template.  **Values:** - &#x60;0&#x60; - PlainText - &#x60;1&#x60; - DragDrop - &#x60;2&#x60; - SendxEditor  | [optional] |
| **created** | **Time** | Template creation timestamp | [optional] |
| **updated** | **Time** | Template last update timestamp | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRTemplate.new(
  id: template_abc123def456ghi789,
  name: Welcome Email Template,
  subject: Welcome to our platform!,
  html_code: &lt;html&gt;&lt;body&gt;&lt;h1&gt;Welcome!&lt;/h1&gt;&lt;/body&gt;&lt;/html&gt;,
  template_code: {&quot;blocks&quot;:[{&quot;type&quot;:&quot;text&quot;,&quot;content&quot;:&quot;Welcome!&quot;}]},
  type: 0,
  thumbnail: https://cdn.sendx.io/templates/thumb_abc123.png,
  editor_type: 1,
  created: 2024-01-10T14:20:00Z,
  updated: 2024-01-15T09:15:00Z
)
```

