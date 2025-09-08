# SendX::TemplateEmailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | [**XFrom**](XFrom.md) |  |  |
| **to** | [**Array&lt;XTo&gt;**](XTo.md) |  |  |
| **reply_to** | [**XReplyTo**](XReplyTo.md) |  | [optional] |
| **subject** | **String** | Override template subject |  |
| **template** | **String** | Template identifier |  |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::TemplateEmailMessage.new(
  from: null,
  to: null,
  reply_to: null,
  subject: Your Subject Here,
  template: template_f3lJvTEhSjKGVb5Lwc5SWS
)
```

