# SendX::RestEContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the contact | [optional] |
| **last_name** | **String** | Last name of the contact | [optional] |
| **email** | **String** | Email address of the contact (required and must be unique within team).  **Validation:** - Must be a valid email format - Must be unique within the team - Cannot be empty or null  |  |
| **company** | **String** | Company name of the contact | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | Custom fields as key-value pairs. Keys should use &#x60;field_&#x60; prefix.  **Processing:** - Keys are case-sensitive - Values are stored as strings  **Examples:** - &#x60;\&quot;field_MnuqBAG2NPLm7PZMWbjQxt\&quot;: \&quot;Engineering\&quot;&#x60; → stored as &#x60;department: Engineering&#x60;  | [optional] |
| **lists** | **Array&lt;String&gt;** | Array of list identifiers to associate with the contact.  Identifiers should use &#x60;list_&#x60; prefix.  **Processing:** - Invalid list IDs will send our 400 error - Duplicates will be removed  **Examples:** - &#x60;\&quot;list_OcuxJHdiAvujmwQVJfd3ss\&quot;&#x60; → valid prefixed format  | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of tag identifiers to associate with the contact. Identifiers should use &#x60;tag_&#x60; prefix.  **Processing:** - Invalid tag IDs will be ignored - Duplicates will be removed  **Examples:** - &#x60;\&quot;tag_UhsDkjL772Qbj5lWtT62VK\&quot;&#x60; → valid prefixed format  | [optional] |
| **last_tracked_ip** | **String** | Last tracked IP address of the contact for analytics purposes.  **Usage:** - Used for geographic analytics - Helps with spam detection - Optional field  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestEContact.new(
  first_name: John,
  last_name: Doe,
  email: john.doe@example.com,
  company: Example Corp,
  custom_fields: {field_MnuqBAG2NPLm7PZMWbjQxt&#x3D;Engineering, field_QqfhckbdcvQinLPlduIbHq&#x3D;Senior},
  lists: [list_OcuxJHdiAvujmwQVJfd3ss],
  tags: [tag_UhsDkjL772Qbj5lWtT62VK],
  last_tracked_ip: 192.168.1.100
)
```

