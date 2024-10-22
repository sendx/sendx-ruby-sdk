# SendX::ListModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Encrypted ID of the list | [optional] |
| **name** | **String** | Name of the list | [optional] |
| **type** | **Integer** | Type of the list representing opt-in methods (1: Single Opt-In, 2: Double Opt-In) | [optional] |
| **send_thank_you_mail** | **Boolean** | Indicates if a thank-you email should be sent | [optional] |
| **thank_you_from_name** | **String** | Name displayed as the sender in the thank-you email | [optional] |
| **thank_you_from_email** | **String** | Email address from which the thank-you email is sent | [optional] |
| **thank_you_mail_subject** | **String** | Subject line of the thank-you email | [optional] |
| **thank_you_mail_message** | **String** | Plain text message body of the thank-you email | [optional] |
| **thank_you_sender** | **String** | Details of the sender of the thank-you email | [optional] |
| **confirm_from_name** | **String** | Name displayed as the sender in the confirmation email | [optional] |
| **confirm_from_email** | **String** | Email address from which the confirmation email is sent | [optional] |
| **confirm_mail_subject** | **String** | Subject line of the confirmation email | [optional] |
| **confirm_mail_message** | **String** | Plain text message body of the confirmation email | [optional] |
| **confirm_success_page** | **String** | URL of the success page after confirmation | [optional] |
| **created** | **Time** | Date and time when the list was created | [optional] |
| **updated** | **Time** | Date and time when the list was last updated | [optional] |
| **confirm_sender** | **String** | Details of the sender of the confirmation email | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::ListModel.new(
  id: encrypted_list_id,
  name: Newsletter Subscribers,
  type: 0,
  send_thank_you_mail: true,
  thank_you_from_name: John Doe,
  thank_you_from_email: john.doe@example.com,
  thank_you_mail_subject: Thank You for Subscribing!,
  thank_you_mail_message: We appreciate your subscription!,
  thank_you_sender: info@example.com,
  confirm_from_name: John Doe,
  confirm_from_email: john.doe@example.com,
  confirm_mail_subject: Please Confirm Your Subscription,
  confirm_mail_message: Click the link below to confirm your subscription.,
  confirm_success_page: https://example.com/confirmation-success,
  created: 2024-10-01T12:34:56Z,
  updated: 2024-10-10T14:30Z,
  confirm_sender: null
)
```

