# SendX::ListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the list | [optional] |
| **type** | **Integer** | Type of the list representing opt-in methods &lt;br&gt; 0: Single opt-in list &lt;br&gt; 1: Double opt-in list  | [optional] |
| **send_thank_you_mail** | **Boolean** | Indicates if a thank-you email should be sent | [optional] |
| **thank_you_from_name** | **String** | Name displayed as the sender in the thank-you email | [optional] |
| **thank_you_from_email** | **String** | Email address from which the thank-you email is sent | [optional] |
| **thank_you_mail_subject** | **String** | Subject line of the thank-you email | [optional] |
| **thank_you_mail_message** | **String** | Plain text message body of the thank-you email | [optional] |
| **thank_you_sender** | **String** | Sender ID for the thank-you email | [optional] |
| **confirm_from_name** | **String** | Name displayed as the sender in the confirmation email | [optional] |
| **confirm_from_email** | **String** | Email address from which the confirmation email is sent | [optional] |
| **confirm_mail_subject** | **String** | Subject line of the confirmation email | [optional] |
| **confirm_mail_message** | **String** | Plain text message body of the confirmation email | [optional] |
| **confirm_success_page** | **String** | URL of the success page after confirmation | [optional] |
| **confirm_sender** | **String** | Sender ID for the confirmation email | [optional] |

## Example

```ruby
require 'sendx-ruby-sdk'

instance = SendX::ListRequest.new(
  name: Newsletter Subscribers,
  type: 0,
  send_thank_you_mail: true,
  thank_you_from_name: John Doe,
  thank_you_from_email: john.doe@example.com,
  thank_you_mail_subject: Thank You for Subscribing!,
  thank_you_mail_message: We appreciate your subscription!,
  thank_you_sender: sender_101,
  confirm_from_name: John Doe,
  confirm_from_email: john.doe@example.com,
  confirm_mail_subject: Please Confirm Your Subscription,
  confirm_mail_message: Click the link below to confirm your subscription.,
  confirm_success_page: https://example.com/confirmation-success,
  confirm_sender: sender_102
)
```

