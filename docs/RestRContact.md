# SendX::RestRContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique contact identifier with contact_ prefix.  **Format:** &#x60;contact_&#x60; + 22 alphanumeric characters  **Usage:** - Use this ID for all subsequent API calls - Unique across the entire SendX platform - Never changes once created  | [optional] |
| **first_name** | **String** | First name of the contact | [optional] |
| **last_name** | **String** | Last name of the contact | [optional] |
| **email** | **String** | Email address of the contact (unique within team) | [optional] |
| **company** | **String** | Company name of the contact | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | Custom fields with field_ prefixed keys.  **Format:** All keys have &#x60;field_&#x60; prefix in responses  **Example Structure:** &#x60;&#x60;&#x60;json {   \&quot;field_MnuqBAG2NPLm7PZMWbjQxt\&quot;: \&quot;Engineering\&quot;,   \&quot;field_QqfhckbdcvQinLPlduIbHq\&quot;: \&quot;Senior\&quot;,   \&quot;field_MnuqBAG2NPLm7PZMWbjQxt\&quot;: \&quot;$75000\&quot; } &#x60;&#x60;&#x60;  | [optional] |
| **lists** | **Array&lt;String&gt;** | Associated lists with list_ prefixed identifiers.  **Format:** All IDs have &#x60;list_&#x60; prefix in responses  | [optional] |
| **tags** | **Array&lt;String&gt;** | Associated tags with tag_ prefixed identifiers.  **Format:** All IDs have &#x60;tag_&#x60; prefix in responses  | [optional] |
| **unsubscribed** | **Boolean** | Whether the contact has unsubscribed from emails | [optional] |
| **bounced** | **Boolean** | Whether emails to this contact have bounced | [optional] |
| **spam** | **Boolean** | Whether the contact has marked emails as spam | [optional] |
| **blocked** | **Boolean** | Whether the contact is blocked from receiving emails | [optional] |
| **dropped** | **Boolean** | Whether emails to this contact have been dropped | [optional] |
| **created** | **Time** | Contact creation timestamp (ISO 8601 format) | [optional] |
| **updated** | **Time** | Contact last update timestamp (ISO 8601 format) | [optional] |
| **track_data** | **String** | Email tracking data and UTM parameters.  **Contains:** - UTM parameters from campaigns - Attribution data - Custom tracking parameters  | [optional] |
| **contact_source** | **Integer** | Source type of the contact creation.  **Values:** - &#x60;1&#x60; - API/Manual - &#x60;2&#x60; - Import - &#x60;3&#x60; - Form - &#x60;4&#x60; - Integration  | [optional] |
| **page_source** | **String** | URL of the page where contact was created | [optional] |
| **last_tracked_ip** | **String** | Last tracked IP address of the contact | [optional] |
| **ltv** | **Integer** | Lifetime Value of the contact in cents.  **Example:** 7500 &#x3D; $75.00  | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::RestRContact.new(
  id: contact_BnKjkbBBS500CoBCP0oChQ,
  first_name: John,
  last_name: Doe,
  email: john.doe@example.com,
  company: Example Corp,
  custom_fields: {field_MnuqBAG2NPLm7PZMWbjQxt&#x3D;Engineering, field_QqfhckbdcvQinLPlduIbHq&#x3D;Senior},
  lists: [list_OcuxJHdiAvujmwQVJfd3ss, list_xyz789ghi012],
  tags: [tag_UhsDkjL772Qbj5lWtT62VK, tag_UhsDkjL772Qbj5lWtT62VK],
  unsubscribed: false,
  bounced: false,
  spam: false,
  blocked: false,
  dropped: false,
  created: 2024-01-10T14:20:00Z,
  updated: 2024-01-15T09:15:00Z,
  track_data: utm_source&#x3D;website&amp;utm_campaign&#x3D;signup&amp;utm_medium&#x3D;banner,
  contact_source: 1,
  page_source: https://example.com/signup?ref&#x3D;google-ads,
  last_tracked_ip: 203.0.113.42,
  ltv: 7500
)
```

