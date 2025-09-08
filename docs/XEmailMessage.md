# SendX::XEmailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | [**XFrom**](XFrom.md) |  |  |
| **to** | [**Array&lt;XTo&gt;**](XTo.md) |  |  |
| **reply_to** | [**XReplyTo**](XReplyTo.md) |  | [optional] |
| **subject** | **String** |  |  |
| **html_body** | **String** |  |  |
| **text_body** | **String** |  | [optional] |
| **headers** | **Hash&lt;String, String&gt;** |  | [optional] |
| **template** | **String** | Template identifier | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::XEmailMessage.new(
  from: null,
  to: null,
  reply_to: null,
  subject: Your Subject Here,
  html_body: &lt;h1&gt;Your HTML Content&lt;/h1&gt;,
  text_body: Your Text Content,
  headers: {X-Custom-Header&#x3D;Value},
  template: template_f3lJvTEhSjKGVb5Lwc5SWS
)
```

