# SendX::XEmailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | Recipient email address | [optional] |
| **submitted_at** | **Integer** | Unix timestamp of submission | [optional] |
| **message_id** | **String** | Unique message identifier | [optional] |
| **error_code** | **Integer** | Error code (0 &#x3D; success) | [optional] |
| **message** | **String** | Status message | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::XEmailResponse.new(
  to: null,
  submitted_at: null,
  message_id: null,
  error_code: null,
  message: null
)
```

