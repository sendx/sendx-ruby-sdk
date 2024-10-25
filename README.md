# [SendX Ruby SDK](https://rubygems.org/gems/sendx-ruby-sdk)
[![Gem Version](https://badge.fury.io/rb/sendx-ruby-sdk.svg)](https://badge.fury.io/rb/sendx-ruby-sdk)

SendX - the Ruby gem for the SendX REST API

## Introduction 

SendX is an email marketing product. It helps you convert website visitors to customers, send them promotional emails, engage with them using drip sequences and craft custom journeys using powerful but simple automations. 

The SendX API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs.
The SendX Rest API doesn’t support bulk updates. You can work on only one object per request. <br>


## Installation

### Build a gem


To install the gem:

Install via command line
```shell
gem install sendx-ruby-sdk
```

Install via Gemfile

```ruby
source "https://rubygems.pkg.github.com/sendx" do
  gem "sendx-ruby-sdk", "1.0.1"
end
```


### Install from Git

The Ruby gem is hosted at a git repository: https://github.com/sendx/sendx-ruby-sdk, add the following in the Gemfile:

    gem 'sendx-ruby-sdk', :git => 'https://github.com/sendx/sendx-ruby-sdk.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'time'
require 'sendx-ruby-sdk'
# setup authorization
SendX.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  config.server_index = 2
end

api_instance = SendX::ContactApi.new
contact_request = SendX::ContactRequest.new(
  email: "john@doe.com",
  first_name: "John",
  last_name: "Doe",
  company: "SendX",
  last_tracked_ip: "34.94.159.140",
  tags: ["MKdhTovsTJDetCyrJmRySL"],
  custom_fields: {
        'fnwfnke23kn4kn' => "VIP",
        "9i0jinjn0ib0"=> "Subscribers"
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
*SendX::CampaignApi* | [**create_campaign**](docs/CampaignApi.md#create_campaign) | **POST** /campaign | Create Campaign
*SendX::CampaignApi* | [**delete_campaign**](docs/CampaignApi.md#delete_campaign) | **DELETE** /campaign/{campaignId} | Delete Campaign
*SendX::CampaignApi* | [**edit_campaign**](docs/CampaignApi.md#edit_campaign) | **PUT** /campaign/{campaignId} | Edit Campaign
*SendX::CampaignApi* | [**get_all_campaigns**](docs/CampaignApi.md#get_all_campaigns) | **GET** /campaign | Get All Campaigns
*SendX::CampaignApi* | [**get_campaign_by_id**](docs/CampaignApi.md#get_campaign_by_id) | **GET** /campaign/{campaignId} | Get Campaign By Id
*SendX::ContactApi* | [**create_contact**](docs/ContactApi.md#create_contact) | **POST** /contact | Create a contact
*SendX::ContactApi* | [**delete_contact**](docs/ContactApi.md#delete_contact) | **DELETE** /contact/{contactId} | Delete Contact
*SendX::ContactApi* | [**get_all_contacts**](docs/ContactApi.md#get_all_contacts) | **GET** /contact | Get All Contacts
*SendX::ContactApi* | [**get_contact_by_id**](docs/ContactApi.md#get_contact_by_id) | **GET** /contact/{contactId} | Get Contact by ID
*SendX::ContactApi* | [**unsubscribe_contact**](docs/ContactApi.md#unsubscribe_contact) | **POST** /contact/unsubscribe/{contactId} | Unsubscribe Contact
*SendX::ContactApi* | [**update_contact**](docs/ContactApi.md#update_contact) | **PUT** /contact/{contactId} | Update Contact
*SendX::ListApi* | [**create_list**](docs/ListApi.md#create_list) | **POST** /list | Create List
*SendX::ListApi* | [**delete_list**](docs/ListApi.md#delete_list) | **DELETE** /list/{listId} | Delete List
*SendX::ListApi* | [**get_all_lists**](docs/ListApi.md#get_all_lists) | **GET** /list | Get All Lists
*SendX::ListApi* | [**get_list_by_id**](docs/ListApi.md#get_list_by_id) | **GET** /list/{listId} | Get List
*SendX::ListApi* | [**update_list**](docs/ListApi.md#update_list) | **PUT** /list/{listId} | Update List
*SendX::ReportsApi* | [**get_campaign_report**](docs/ReportsApi.md#get_campaign_report) | **GET** /report/campaign/{campaignId} | Get CampaignReport Data
*SendX::SenderApi* | [**create_sender**](docs/SenderApi.md#create_sender) | **POST** /sender | Create Sender
*SendX::SenderApi* | [**get_all_senders**](docs/SenderApi.md#get_all_senders) | **GET** /sender | Get All Senders
*SendX::TagsApi* | [**create_tag**](docs/TagsApi.md#create_tag) | **POST** /tag | Create a Tag
*SendX::TagsApi* | [**delete_tag**](docs/TagsApi.md#delete_tag) | **DELETE** /tag/{tagId} | Delete a Tag
*SendX::TagsApi* | [**get_all_tags**](docs/TagsApi.md#get_all_tags) | **GET** /tag | Get All Tags
*SendX::TagsApi* | [**get_tag_by_id**](docs/TagsApi.md#get_tag_by_id) | **GET** /tag/{tagId} | Get a Tag by ID
*SendX::TagsApi* | [**update_tag**](docs/TagsApi.md#update_tag) | **PUT** /tag/{tagId} | Update a Tag


## Documentation for Models

 - [SendX::Campaign](docs/Campaign.md)
 - [SendX::CampaignDashboardData](docs/CampaignDashboardData.md)
 - [SendX::CampaignRequest](docs/CampaignRequest.md)
 - [SendX::Contact](docs/Contact.md)
 - [SendX::ContactRequest](docs/ContactRequest.md)
 - [SendX::CreateResponse](docs/CreateResponse.md)
 - [SendX::DashboardStats](docs/DashboardStats.md)
 - [SendX::DeleteCampaign200Response](docs/DeleteCampaign200Response.md)
 - [SendX::DeleteRequest](docs/DeleteRequest.md)
 - [SendX::DeleteResponse](docs/DeleteResponse.md)
 - [SendX::LastSentCampaignStat](docs/LastSentCampaignStat.md)
 - [SendX::ListModel](docs/ListModel.md)
 - [SendX::ListRequest](docs/ListRequest.md)
 - [SendX::ReportData](docs/ReportData.md)
 - [SendX::Response](docs/Response.md)
 - [SendX::Sender](docs/Sender.md)
 - [SendX::SenderRequest](docs/SenderRequest.md)
 - [SendX::SenderResponse](docs/SenderResponse.md)
 - [SendX::Tag](docs/Tag.md)
 - [SendX::TagRequest](docs/TagRequest.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### apiKeyAuth


- **Type**: API key
- **API key parameter name**: X-Team-ApiKey
- **Location**: HTTP header

