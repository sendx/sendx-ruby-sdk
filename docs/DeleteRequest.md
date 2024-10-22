# SendX::DeleteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_contacts** | **Boolean** | Indicates whether to delete associated contacts. | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::DeleteRequest.new(
  delete_contacts: true
)
```

