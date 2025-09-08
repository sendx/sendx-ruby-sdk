# SendX Ruby SDK

# SendX REST API Documentation

## 🚀 Introduction

The SendX API is organized around REST principles. Our API has predictable resource-oriented URLs, accepts JSON-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs.

**Key Features:**
- 🔒 **Security**: Team-based authentication with optional member-level access
- 🎯 **Resource-Oriented**: RESTful design with clear resource boundaries
- 📊 **Rich Data Models**: Three-layer model system (Input/Output/Internal)
- 🔗 **Relationships**: Automatic prefix handling for resource relationships
- 📈 **Scalable**: Built for high-volume email marketing operations

## 🏗️ Architecture Overview

SendX uses a three-layer model architecture:

1. **Input Models** (`RestE*`): For API requests
2. **Output Models** (`RestR*`): For API responses with prefixed IDs
3. **Internal Models**: Core business logic (not exposed in API)

## 🔐 Security & Authentication

SendX uses API key authentication:

### Team API Key
```http
X-Team-ApiKey: YOUR_TEAM_API_KEY
```
- **Required for all requests**
- Team-level access to resources
- Available in SendX Settings → Team API Key

## 🆔 Encrypted ID System

SendX uses encrypted IDs for security and better developer experience:

- **Internal IDs**: Sequential integers (not exposed)
- **Encrypted IDs**: 22-character alphanumeric strings
- **Prefixed IDs**: Resource-type prefixes in API responses (`contact_<22-char-id>`)

### ID Format

**All resource IDs follow this pattern:**
```
<resource_prefix>_<22_character_alphanumeric_string>
```

**Example:**
```json
{
  "id": "contact_BnKjkbBBS500CoBCP0oChQ",
  "lists": ["list_OcuxJHdiAvujmwQVJfd3ss", "list_0tOFLp5RgV7s3LNiHrjGYs"],
  "tags": ["tag_UhsDkjL772Qbj5lWtT62VK", "tag_fL7t9lsnZ9swvx2HrtQ9wM"]
}
```

## 📚 Resource Prefixes

| Resource | Prefix | Example |
|----------|--------|---------|
| Contact | `contact_` | `contact_BnKjkbBBS500CoBCP0oChQ` |
| Campaign | `campaign_` | `campaign_LUE9BTxmksSmqHWbh96zsn` |
| List | `list_` | `list_OcuxJHdiAvujmwQVJfd3ss` |
| Tag | `tag_` | `tag_UhsDkjL772Qbj5lWtT62VK` |
| Sender | `sender_` | `sender_4vK3WFhMgvOwUNyaL4QxCD` |
| Template | `template_` | `template_f3lJvTEhSjKGVb5Lwc5SWS` |
| Custom Field | `field_` | `field_MnuqBAG2NPLm7PZMWbjQxt` |
| Webhook | `webhook_` | `webhook_9l154iiXlZoPo7vngmamee` |
| Post | `post_` | `post_XyZ123aBc456DeF789GhI` |
| Post Category | `post_category_` | `post_category_YzS1wOU20yw87UUHKxMzwn` |
| Post Tag | `post_tag_` | `post_tag_123XyZ456AbC` |
| Member | `member_` | `member_JkL012MnO345PqR678` |

## 🎯 Best Practices

### Error Handling
- **Always check status codes**: 2xx = success, 4xx = client error, 5xx = server error
- **Read error messages**: Descriptive messages help debug issues
- **Handle rate limits**: Respect API rate limits for optimal performance

### Data Validation
- **Email format**: Must be valid email addresses
- **Required fields**: Check documentation for mandatory fields
- **Field lengths**: Respect maximum length constraints

### Performance
- **Pagination**: Use offset/limit for large datasets
- **Batch operations**: Process multiple items when supported
- **Caching**: Cache responses when appropriate

## 🛠️ SDKs & Integration

Official SDKs available for:
- [Golang](https://github.com/sendx/sendx-go-sdk)
- [Python](https://github.com/sendx/sendx-python-sdk)
- [Ruby](https://github.com/sendx/sendx-ruby-sdk)
- [Java](https://github.com/sendx/sendx-java-sdk)
- [PHP](https://github.com/sendx/sendx-php-sdk)
- [JavaScript](https://github.com/sendx/sendx-javascript-sdk)

## 📞 Support

Need help? Contact us:
- 💬 **Website Chat**: Available on sendx.io
- 📧 **Email**: hello@sendx.io
- 📚 **Documentation**: Full guides at help.sendx.io

---

**API Endpoint:** `https://api.sendx.io/api/v1/rest`

## Installation

### To install the gem:

Install via command line

```
gem install sendx-ruby-sdk
```

Install via Gemfile

```
source "https://rubygems.pkg.github.com/sendx" do
gem "sendx-ruby-sdk", "1.1.0"
end
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'sendx-ruby-sdk'

# Setup authorization
SendX.configure do |config|
  # Configure API key authorization: TeamApiKey
  config.api_key['X-Team-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Team-ApiKey'] = 'Bearer'
end

api_instance = SendX::ContactApi.new
contact_request = SendX::ContactRequest.new(
  email: "john@doe.com",
  first_name: "John",
  last_name: "Doe",
  company: "SendX",
  last_tracked_ip: "34.94.159.140",
  tags: ["tag_MKdhTovsTJDetCyrJmRySL"],
  custom_fields: {
        'custom_field_MKdhTovsTJDetCyrJmRySe' => "VIP",
        "custom_field_MKdhTovsTFDetCyrJerRySL"=> "Subscribers"
    },
)

begin
  # Create a contact
  result = api_instance.create_contact(contact_request)
  p result
rescue SendX::ApiError => e
  puts "Error when calling ContactApi->create_contact: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sendx.io/api/v1/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SendX::CampaignApi* | [**create_campaign**](docs/CampaignApi.md#create_campaign) | **POST** /campaign | Create campaign
*SendX::CampaignApi* | [**delete_campaign**](docs/CampaignApi.md#delete_campaign) | **DELETE** /campaign/{identifier} | Delete campaign
*SendX::CampaignApi* | [**get_all_campaigns**](docs/CampaignApi.md#get_all_campaigns) | **GET** /campaign | Get all campaigns
*SendX::CampaignApi* | [**get_campaign**](docs/CampaignApi.md#get_campaign) | **GET** /campaign/{identifier} | Get campaign by ID
*SendX::ContactApi* | [**create_contact**](docs/ContactApi.md#create_contact) | **POST** /contact | Create a new contact
*SendX::ContactApi* | [**delete_contact**](docs/ContactApi.md#delete_contact) | **DELETE** /contact/{identifier} | Delete contact
*SendX::ContactApi* | [**get_all_contacts**](docs/ContactApi.md#get_all_contacts) | **GET** /contact | Get all contacts
*SendX::ContactApi* | [**get_contact**](docs/ContactApi.md#get_contact) | **GET** /contact/{identifier} | Get contact by ID
*SendX::ContactApi* | [**unsubscribe_contact**](docs/ContactApi.md#unsubscribe_contact) | **POST** /contact/unsubscribe/{identifier} | Unsubscribe contact
*SendX::ContactApi* | [**update_contact**](docs/ContactApi.md#update_contact) | **PUT** /contact/{identifier} | Update contact
*SendX::CustomFieldApi* | [**create_custom_field**](docs/CustomFieldApi.md#create_custom_field) | **POST** /customfield | Create custom field
*SendX::CustomFieldApi* | [**delete_custom_field**](docs/CustomFieldApi.md#delete_custom_field) | **DELETE** /customfield/{identifier} | Delete custom field
*SendX::CustomFieldApi* | [**get_all_custom_fields**](docs/CustomFieldApi.md#get_all_custom_fields) | **GET** /customfield | Get all custom fields
*SendX::CustomFieldApi* | [**get_custom_field**](docs/CustomFieldApi.md#get_custom_field) | **GET** /customfield/{identifier} | Get custom field by ID
*SendX::CustomFieldApi* | [**update_custom_field**](docs/CustomFieldApi.md#update_custom_field) | **PUT** /customfield/{identifier} | Update custom field
*SendX::EmailSendingApi* | [**send_email**](docs/EmailSendingApi.md#send_email) | **POST** /send/email | Send transactional email
*SendX::EmailSendingApi* | [**send_email_with_template**](docs/EmailSendingApi.md#send_email_with_template) | **POST** /send/template | Send email using template
*SendX::EventApi* | [**events_custom_postback_get**](docs/EventApi.md#events_custom_postback_get) | **GET** /events/custom/postback | Custom Event Postback URL
*SendX::EventApi* | [**events_revenue_postback_get**](docs/EventApi.md#events_revenue_postback_get) | **GET** /events/revenue/postback | Revenue Event Postback URL
*SendX::EventsApi* | [**track_custom_event**](docs/EventsApi.md#track_custom_event) | **POST** /events/custom | Track custom event
*SendX::EventsApi* | [**track_revenue_event**](docs/EventsApi.md#track_revenue_event) | **POST** /events/revenue | Track revenue event
*SendX::ListApi* | [**create_list**](docs/ListApi.md#create_list) | **POST** /list | Create list
*SendX::ListApi* | [**delete_list**](docs/ListApi.md#delete_list) | **DELETE** /list/{identifier} | Delete list
*SendX::ListApi* | [**get_all_lists**](docs/ListApi.md#get_all_lists) | **GET** /list | Get all lists
*SendX::ListApi* | [**get_list**](docs/ListApi.md#get_list) | **GET** /list/{identifier} | Get list by ID
*SendX::ListApi* | [**update_list**](docs/ListApi.md#update_list) | **PUT** /list/{identifier} | Update list
*SendX::PostApi* | [**create_post**](docs/PostApi.md#create_post) | **POST** /post | Create blog post
*SendX::PostApi* | [**delete_post**](docs/PostApi.md#delete_post) | **DELETE** /post/{identifier} | Delete post
*SendX::PostApi* | [**get_all_posts**](docs/PostApi.md#get_all_posts) | **GET** /post | Get all posts
*SendX::PostApi* | [**get_post**](docs/PostApi.md#get_post) | **GET** /post/{identifier} | Get post by ID
*SendX::PostApi* | [**update_post**](docs/PostApi.md#update_post) | **PUT** /post/{identifier} | Update post
*SendX::PostCategoryApi* | [**create_post_category**](docs/PostCategoryApi.md#create_post_category) | **POST** /post/category | Create post category
*SendX::PostCategoryApi* | [**delete_post_category**](docs/PostCategoryApi.md#delete_post_category) | **DELETE** /post/category/{identifier} | Delete post category
*SendX::PostCategoryApi* | [**get_all_post_categories**](docs/PostCategoryApi.md#get_all_post_categories) | **GET** /post/category | Get all post categories
*SendX::PostCategoryApi* | [**get_post_category**](docs/PostCategoryApi.md#get_post_category) | **GET** /post/category/{identifier} | Get post category by ID
*SendX::PostCategoryApi* | [**update_post_category**](docs/PostCategoryApi.md#update_post_category) | **PUT** /post/category/{identifier} | Update post category
*SendX::PostTagApi* | [**create_post_tag**](docs/PostTagApi.md#create_post_tag) | **POST** /post/tag | Create post tag
*SendX::PostTagApi* | [**delete_post_tag**](docs/PostTagApi.md#delete_post_tag) | **DELETE** /post/tag/{identifier} | Delete post tag
*SendX::PostTagApi* | [**get_all_post_tags**](docs/PostTagApi.md#get_all_post_tags) | **GET** /post/tag | Get all post tags
*SendX::PostTagApi* | [**get_post_tag**](docs/PostTagApi.md#get_post_tag) | **GET** /post/tag/{identifier} | Get post tag by ID
*SendX::PostTagApi* | [**update_post_tag**](docs/PostTagApi.md#update_post_tag) | **PUT** /post/tag/{identifier} | Update post tag
*SendX::ReportApi* | [**get_campaign_report**](docs/ReportApi.md#get_campaign_report) | **GET** /report/campaign/{identifier} | Get campaign report
*SendX::SenderApi* | [**create_sender**](docs/SenderApi.md#create_sender) | **POST** /sender | Create sender
*SendX::SenderApi* | [**get_all_senders**](docs/SenderApi.md#get_all_senders) | **GET** /sender | Get all senders
*SendX::TagApi* | [**create_tag**](docs/TagApi.md#create_tag) | **POST** /tag | Create tag
*SendX::TagApi* | [**delete_tag**](docs/TagApi.md#delete_tag) | **DELETE** /tag/{identifier} | Delete tag
*SendX::TagApi* | [**get_all_tags**](docs/TagApi.md#get_all_tags) | **GET** /tag | Get all tags
*SendX::TagApi* | [**get_tag**](docs/TagApi.md#get_tag) | **GET** /tag/{identifier} | Get tag by ID
*SendX::TagApi* | [**update_tag**](docs/TagApi.md#update_tag) | **PUT** /tag/{identifier} | Update tag
*SendX::TeamMemberApi* | [**get_all_team_members**](docs/TeamMemberApi.md#get_all_team_members) | **GET** /team/member | Get all team members
*SendX::TeamMemberApi* | [**get_team_member**](docs/TeamMemberApi.md#get_team_member) | **GET** /team/member/{identifier} | Get a team member by ID
*SendX::TemplateApi* | [**create_email_template**](docs/TemplateApi.md#create_email_template) | **POST** /template/email | Create email template
*SendX::TemplateApi* | [**delete_email_template**](docs/TemplateApi.md#delete_email_template) | **DELETE** /template/email/{identifier} | Delete template
*SendX::TemplateApi* | [**get_all_email_templates**](docs/TemplateApi.md#get_all_email_templates) | **GET** /template/email | Get all templates
*SendX::TemplateApi* | [**get_email_template**](docs/TemplateApi.md#get_email_template) | **GET** /template/email/{identifier} | Get template by ID
*SendX::TemplateApi* | [**update_email_template**](docs/TemplateApi.md#update_email_template) | **PUT** /template/email/{identifier} | Update template
*SendX::TrackingApi* | [**identify_contact**](docs/TrackingApi.md#identify_contact) | **POST** /contact/identify | Identify contact
*SendX::TrackingApi* | [**track_contact**](docs/TrackingApi.md#track_contact) | **POST** /contact/track | Track contact
*SendX::WebhookApi* | [**create_webhook**](docs/WebhookApi.md#create_webhook) | **POST** /webhook | Create webhook
*SendX::WebhookApi* | [**delete_webhook**](docs/WebhookApi.md#delete_webhook) | **DELETE** /webhook/{identifier} | Delete webhook
*SendX::WebhookApi* | [**get_all_webhooks**](docs/WebhookApi.md#get_all_webhooks) | **GET** /webhook | Get all webhooks
*SendX::WebhookApi* | [**get_webhook**](docs/WebhookApi.md#get_webhook) | **GET** /webhook/{identifier} | Get webhook by ID
*SendX::WebhookApi* | [**update_webhook**](docs/WebhookApi.md#update_webhook) | **PUT** /webhook/{identifier} | Update webhook


## Documentation for Models

 - [SendX::CustomEventRequest](docs/CustomEventRequest.md)
 - [SendX::DeleteResponse](docs/DeleteResponse.md)
 - [SendX::ErrorResponse](docs/ErrorResponse.md)
 - [SendX::EventResponse](docs/EventResponse.md)
 - [SendX::EventsRevenuePostbackGet200Response](docs/EventsRevenuePostbackGet200Response.md)
 - [SendX::EventsRevenuePostbackGet400Response](docs/EventsRevenuePostbackGet400Response.md)
 - [SendX::EventsRevenuePostbackGet500Response](docs/EventsRevenuePostbackGet500Response.md)
 - [SendX::IdentifyRequest](docs/IdentifyRequest.md)
 - [SendX::IdentifyResponse](docs/IdentifyResponse.md)
 - [SendX::LinkStat](docs/LinkStat.md)
 - [SendX::MessageResponse](docs/MessageResponse.md)
 - [SendX::PostbackResponse](docs/PostbackResponse.md)
 - [SendX::RestECampaign](docs/RestECampaign.md)
 - [SendX::RestEContact](docs/RestEContact.md)
 - [SendX::RestECustomField](docs/RestECustomField.md)
 - [SendX::RestEList](docs/RestEList.md)
 - [SendX::RestEPost](docs/RestEPost.md)
 - [SendX::RestEPostCategory](docs/RestEPostCategory.md)
 - [SendX::RestEPostTag](docs/RestEPostTag.md)
 - [SendX::RestESender](docs/RestESender.md)
 - [SendX::RestETag](docs/RestETag.md)
 - [SendX::RestETemplate](docs/RestETemplate.md)
 - [SendX::RestEWebhook](docs/RestEWebhook.md)
 - [SendX::RestRCampaign](docs/RestRCampaign.md)
 - [SendX::RestRContact](docs/RestRContact.md)
 - [SendX::RestRCustomField](docs/RestRCustomField.md)
 - [SendX::RestRList](docs/RestRList.md)
 - [SendX::RestRMember](docs/RestRMember.md)
 - [SendX::RestRPost](docs/RestRPost.md)
 - [SendX::RestRPostCategory](docs/RestRPostCategory.md)
 - [SendX::RestRPostTag](docs/RestRPostTag.md)
 - [SendX::RestRSender](docs/RestRSender.md)
 - [SendX::RestRTag](docs/RestRTag.md)
 - [SendX::RestRTemplate](docs/RestRTemplate.md)
 - [SendX::RestRWebhook](docs/RestRWebhook.md)
 - [SendX::RestReportData](docs/RestReportData.md)
 - [SendX::RevenueEventRequest](docs/RevenueEventRequest.md)
 - [SendX::TemplateEmailMessage](docs/TemplateEmailMessage.md)
 - [SendX::TrackRequest](docs/TrackRequest.md)
 - [SendX::TrackResponse](docs/TrackResponse.md)
 - [SendX::WebhookObject](docs/WebhookObject.md)
 - [SendX::XEmailMessage](docs/XEmailMessage.md)
 - [SendX::XEmailResponse](docs/XEmailResponse.md)
 - [SendX::XFrom](docs/XFrom.md)
 - [SendX::XReplyTo](docs/XReplyTo.md)
 - [SendX::XTo](docs/XTo.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### TeamApiKey


- **Type**: API key
- **API key parameter name**: X-Team-ApiKey
- **Location**: HTTP header

