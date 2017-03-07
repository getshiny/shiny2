# Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build click_send.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install click_send-3.1.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend-Ruby&projectName=click_send&gemName=click_send&gemVer=3.1.0)

## How to Use

The following section explains how to use the ClickSend Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the ClickSend gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'click_send', '~> 3.1.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| username | your username |
| key | your api key |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
username = "username"; # your username
key = "key"; # your api key

client = ClickSend::ClickSendClient.new(username, key)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=ClickSend%20v3%20API-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0&initLine=client%2520%253D%2520ClickSendClient.new%2528%2527username%2527%252C%2520%2527key%2527%2529)

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [FaxController](#fax_controller)
* [CountriesController](#countries_controller)
* [SMSController](#sms_controller)
* [VoiceController](#voice_controller)
* [AccountController](#account_controller)
* [SubaccountController](#subaccount_controller)
* [ContactController](#contact_controller)
* [ContactListController](#contact_list_controller)
* [ResellerAccountController](#reseller_account_controller)
* [NumberController](#number_controller)
* [StatisticsController](#statistics_controller)
* [EmailToSmsController](#email_to_sms_controller)
* [SearchController](#search_controller)
* [ReferralAccountController](#referral_account_controller)
* [TransferCreditController](#transfer_credit_controller)
* [PostReturnAddressController](#post_return_address_controller)
* [AccountRechargeController](#account_recharge_controller)
* [SmsCampaignController](#sms_campaign_controller)
* [PostLetterController](#post_letter_controller)
* [UploadController](#upload_controller)
* [MMSController](#mms_controller)

### <a name="fax_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FaxController") FaxController

#### Get singleton instance

The singleton instance of the ``` FaxController ``` class can be accessed from the API Client.

```ruby
fax = client.fax
```

#### <a name="send_fax"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.send_fax") send_fax

> Send a fax using supplied supported file-types.


```ruby
def send_fax(file_url, 
                 messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| file_url |  ``` Required ```  | Your URL to your PDF file. |
| messages |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
file_url = 'file_url'
messages = FaxMessageCollection.new

result = fax.send_fax(file_url, messages)

```


#### <a name="get_fax_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.get_fax_receipt") get_fax_receipt

> Get a single fax receipt based on message id.


```ruby
def get_fax_receipt(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
message_id = 'message_id'

result = fax.get_fax_receipt(message_id)

```


#### <a name="get_fax_history"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.get_fax_history") get_fax_history

> Get a list of Fax History.


```ruby
def get_fax_history(date_from, 
                        date_to, 
                        q, 
                        order); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_from |  ``` Required ```  | Customize result by setting from date (timestsamp) Example: 1457572619. |
| date_to |  ``` Required ```  | Customize result by setting to date (timestamp) Example: 1457573000. |
| q |  ``` Required ```  | Custom query Example: status:Sent,status_code:201. |
| order |  ``` Required ```  | Order result by Example: date_added:desc,list_id:desc. |


#### Example Usage

```ruby
date_from = 17
date_to = 17
q = 'q'
order = 'order'

result = fax.get_fax_history(date_from, date_to, q, order)

```


#### <a name="fax_receipt_list"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.fax_receipt_list") fax_receipt_list

> Get List of Fax Receipts


```ruby
def fax_receipt_list; end
```

#### Example Usage

```ruby

result = fax.fax_receipt_list()

```


#### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.calculate_price") calculate_price

> Calculate Total Price for Fax Messages sent


```ruby
def calculate_price(file_url, 
                        messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| file_url |  ``` Required ```  | Your URL to your PDF file. |
| messages |  ``` Required ```  | Your messages. |


#### Example Usage

```ruby
file_url = 'file_url'
messages = FaxMessageCollection.new

result = fax.calculate_price(file_url, messages)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="countries_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CountriesController") CountriesController

#### Get singleton instance

The singleton instance of the ``` CountriesController ``` class can be accessed from the API Client.

```ruby
countries = client.countries
```

#### <a name="get_countries"></a>![Method: ](https://apidocs.io/img/method.png ".CountriesController.get_countries") get_countries

> *Tags:*  ``` Skips Authentication ``` 

> Get all countries


```ruby
def get_countries; end
```

#### Example Usage

```ruby

result = countries.get_countries()

```


[Back to List of Controllers](#list_of_controllers)

### <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

#### Get singleton instance

The singleton instance of the ``` SMSController ``` class can be accessed from the API Client.

```ruby
sMS = client.sms
```

#### <a name="send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.send_sms") send_sms

> TODO: Add a method description


```ruby
def send_sms(messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
messages = SmsMessageCollection.new

result = sMS.send_sms(messages)

```


#### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.calculate_price") calculate_price

> Calculate sms price


```ruby
def calculate_price(messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
messages = SmsMessageCollection.new

result = sMS.calculate_price(messages)

```


#### <a name="get_sms_history"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_sms_history") get_sms_history

> Get all sms history


```ruby
def get_sms_history(date_from = nil, 
                        date_to = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_from |  ``` Optional ```  | Start date |
| date_to |  ``` Optional ```  | End date |


#### Example Usage

```ruby
date_from = 17
date_to = 17

result = sMS.get_sms_history(date_from, date_to)

```


#### <a name="export_history"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.export_history") export_history

> Export all sms history


```ruby
def export_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
filename = 'filename'

result = sMS.export_history(filename)

```


#### <a name="create_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_receipt") create_receipt

> Add a delivery receipt


```ruby
def create_receipt(url); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |


#### Example Usage

```ruby
url = 'url'

result = sMS.create_receipt(url)

```


#### <a name="mark_receipts_as_read"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.mark_receipts_as_read") mark_receipts_as_read

> Marked delivery receipts as read


```ruby
def mark_receipts_as_read(date_before = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_before |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
date_before = 17

result = sMS.mark_receipts_as_read(date_before)

```


#### <a name="get_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_inbound_sms") get_inbound_sms

> Get all inbound sms


```ruby
def get_inbound_sms; end
```

#### Example Usage

```ruby

result = sMS.get_inbound_sms()

```


#### <a name="create_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_inbound_sms") create_inbound_sms

> Create inbound sms


```ruby
def create_inbound_sms(url); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |


#### Example Usage

```ruby
url = 'url'

result = sMS.create_inbound_sms(url)

```


#### <a name="mark_inbound_sms_as_read"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.mark_inbound_sms_as_read") mark_inbound_sms_as_read

> Marked all inbound sms as read


```ruby
def mark_inbound_sms_as_read(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
message_id = 17

result = sMS.mark_inbound_sms_as_read(message_id)

```


#### <a name="cancel_scheduled_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.cancel_scheduled_sms") cancel_scheduled_sms

> Update scheduled message as cancel


```ruby
def cancel_scheduled_sms(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
message_id = 'message_id'

result = sMS.cancel_scheduled_sms(message_id)

```


#### <a name="cancel_all_scheduled_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.cancel_all_scheduled_sms") cancel_all_scheduled_sms

> Update all scheduled message as cancelled


```ruby
def cancel_all_scheduled_sms; end
```

#### Example Usage

```ruby

result = sMS.cancel_all_scheduled_sms()

```


#### <a name="create_sms_template"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_sms_template") create_sms_template

> Create sms template


```ruby
def create_sms_template(template_name, 
                            body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_name |  ``` Required ```  | Your template name |
| body |  ``` Required ```  | Your template body |


#### Example Usage

```ruby
template_name = 'template_name'
body = 'body'

result = sMS.create_sms_template(template_name, body)

```


#### <a name="delete_sms_template"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.delete_sms_template") delete_sms_template

> Delete sms template


```ruby
def delete_sms_template(template_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
template_id = 'template_id'

result = sMS.delete_sms_template(template_id)

```


#### <a name="update_sms_template"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.update_sms_template") update_sms_template

> Update sms template


```ruby
def update_sms_template(template_id, 
                            template_name, 
                            body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_id |  ``` Required ```  | TODO: Add a parameter description |
| template_name |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
template_id = 17
template_name = 'template_name'
body = 'body'

result = sMS.update_sms_template(template_id, template_name, body)

```


#### <a name="get_delivery_receipts"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_delivery_receipts") get_delivery_receipts

> Get all delivery receipts


```ruby
def get_delivery_receipts; end
```

#### Example Usage

```ruby

result = sMS.get_delivery_receipts()

```


#### <a name="get_sms_templates"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_sms_templates") get_sms_templates

> Get lists of all sms templates


```ruby
def get_sms_templates; end
```

#### Example Usage

```ruby

result = sMS.get_sms_templates()

```


#### <a name="mark_all_inbound_sms_as_read"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.mark_all_inbound_sms_as_read") mark_all_inbound_sms_as_read

> TODO: Add a method description


```ruby
def mark_all_inbound_sms_as_read(date_before = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_before |  ``` Optional ```  | An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. |


#### Example Usage

```ruby
date_before = 17

result = sMS.mark_all_inbound_sms_as_read(date_before)

```


#### <a name="get_specific_delivery_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_specific_delivery_receipt") get_specific_delivery_receipt

> Get a Specific Delivery Receipt


```ruby
def get_specific_delivery_receipt(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
message_id = 'message_id'

result = sMS.get_specific_delivery_receipt(message_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="voice_controller"></a>![Class: ](https://apidocs.io/img/class.png ".VoiceController") VoiceController

#### Get singleton instance

The singleton instance of the ``` VoiceController ``` class can be accessed from the API Client.

```ruby
voice = client.voice
```

#### <a name="send_voice"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.send_voice") send_voice

> TODO: Add a method description


```ruby
def send_voice(messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
messages = [{ 'key' => 'value' }]

result = voice.send_voice(messages)

```


#### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.calculate_price") calculate_price

> Calculate voice price


```ruby
def calculate_price(parameters); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| parameters |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
parameters = [{ 'key' => 'value' }]

result = voice.calculate_price(parameters)

```


#### <a name="get_voice_languages"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.get_voice_languages") get_voice_languages

> Get all voice languages


```ruby
def get_voice_languages; end
```

#### Example Usage

```ruby

result = voice.get_voice_languages()

```


#### <a name="get_voice_history"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.get_voice_history") get_voice_history

> Get all voice history


```ruby
def get_voice_history(date_from = nil, 
                          date_to = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_from |  ``` Optional ```  | TODO: Add a parameter description |
| date_to |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
date_from = 17
date_to = 17

result = voice.get_voice_history(date_from, date_to)

```


#### <a name="get_voice_receipts"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.get_voice_receipts") get_voice_receipts

> Get all voice receipts


```ruby
def get_voice_receipts; end
```

#### Example Usage

```ruby

result = voice.get_voice_receipts()

```


#### <a name="cancel_voice_message"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.cancel_voice_message") cancel_voice_message

> Update voice message status as cancelled


```ruby
def cancel_voice_message(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
message_id = 'message_id'

result = voice.cancel_voice_message(message_id)

```


#### <a name="cancel_voice_messages"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.cancel_voice_messages") cancel_voice_messages

> Update all voice messages as cancelled


```ruby
def cancel_voice_messages; end
```

#### Example Usage

```ruby

result = voice.cancel_voice_messages()

```


#### <a name="export_voice_history"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.export_voice_history") export_voice_history

> Export voice history


```ruby
def export_voice_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
filename = 'filename'

result = voice.export_voice_history(filename)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

#### Get singleton instance

The singleton instance of the ``` AccountController ``` class can be accessed from the API Client.

```ruby
account = client.account
```

#### <a name="get_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.get_account") get_account

> Get account details


```ruby
def get_account; end
```

#### Example Usage

```ruby

result = account.get_account()

```


#### <a name="create_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.create_account") create_account

> Create An Account


```ruby
def create_account(account); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
account = [Account.new]

result = account.create_account(account)

```


#### <a name="activation_token"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.activation_token") activation_token

> Send account activation token


```ruby
def activation_token(user_phone, 
                         type, 
                         country); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_phone |  ``` Required ```  | Your phone number |
| type |  ``` Required ```  | Activation type |
| country |  ``` Required ```  | Your country |


#### Example Usage

```ruby
user_phone = 'user_phone'
type = 'type'
country = 'country'

result = account.activation_token(user_phone, type, country)

```


#### <a name="verify_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.verify_account") verify_account

> Verify new account


```ruby
def verify_account(activation_token); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| activation_token |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
activation_token = 'activation_token'

result = account.verify_account(activation_token)

```


#### <a name="forgot_username"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.forgot_username") forgot_username

> *Tags:*  ``` Skips Authentication ``` 

> Forgot username


```ruby
def forgot_username(email = nil, 
                        phone_number = nil, 
                        country = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Optional ```  | TODO: Add a parameter description |
| phone_number |  ``` Optional ```  | TODO: Add a parameter description |
| country |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
email = 'email'
phone_number = 'phone_number'
country = 'country'

result = account.forgot_username(email, phone_number, country)

```


#### <a name="forgot_password"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.forgot_password") forgot_password

> Forgot password


```ruby
def forgot_password(username); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
username = 'username'

result = account.forgot_password(username)

```


#### <a name="verify_forgot_password"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.verify_forgot_password") verify_forgot_password

> Verify forgot password


```ruby
def verify_forgot_password(subaccount_id, 
                               activation_token, 
                               password); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | Your subaccount id. |
| activation_token |  ``` Required ```  | Your email activation token. |
| password |  ``` Required ```  | Your new password. |


#### Example Usage

```ruby
subaccount_id = 230
activation_token = 'activation_token'
password = 'password'

result = account.verify_forgot_password(subaccount_id, activation_token, password)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="subaccount_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubaccountController") SubaccountController

#### Get singleton instance

The singleton instance of the ``` SubaccountController ``` class can be accessed from the API Client.

```ruby
subaccount = client.subaccount
```

#### <a name="get_subaccounts"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.get_subaccounts") get_subaccounts

> Get all subaccounts


```ruby
def get_subaccounts; end
```

#### Example Usage

```ruby

result = subaccount.get_subaccounts()

```


#### <a name="update_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.update_subaccount") update_subaccount

> Update subaccount


```ruby
def update_subaccount(subaccount_id, 
                          subaccount); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | TODO: Add a parameter description |
| subaccount |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subaccount_id = 230
subaccount = Subaccount.new

result = subaccount.update_subaccount(subaccount_id, subaccount)

```


#### <a name="get_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.get_subaccount") get_subaccount

> Get specific subaccount


```ruby
def get_subaccount(subaccount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subaccount_id = 230

result = subaccount.get_subaccount(subaccount_id)

```


#### <a name="delete_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.delete_subaccount") delete_subaccount

> Delete a subaccount


```ruby
def delete_subaccount(subaccount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subaccount_id = 230

result = subaccount.delete_subaccount(subaccount_id)

```


#### <a name="regenerate_api_key"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.regenerate_api_key") regenerate_api_key

> Regenerate an API Key


```ruby
def regenerate_api_key(subaccount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subaccount_id = 230

result = subaccount.regenerate_api_key(subaccount_id)

```


#### <a name="create_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.create_subaccount") create_subaccount

> Create new subaccount


```ruby
def create_subaccount(subaccount); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
subaccount = Subaccount.new

result = subaccount.create_subaccount(subaccount)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="contact_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ContactController") ContactController

#### Get singleton instance

The singleton instance of the ``` ContactController ``` class can be accessed from the API Client.

```ruby
contact = client.contact
```

#### <a name="create_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.create_contact") create_contact

> Create new contact


```ruby
def create_contact(contact, 
                       list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| contact |  ``` Required ```  | contact model |
| list_id |  ``` Required ```  | List id |


#### Example Usage

```ruby
contact = Contact.new
list_id = 'list_id'

result = contact.create_contact(contact, list_id)

```


#### <a name="get_contacts"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.get_contacts") get_contacts

> Get all contacts in a list


```ruby
def get_contacts(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 230

result = contact.get_contacts(list_id)

```


#### <a name="update_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.update_contact") update_contact

> Update contact


```ruby
def update_contact(list_id, 
                       contact_id, 
                       contact); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |
| contact_id |  ``` Required ```  | Your contact id |
| contact |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 230
contact_id = 230
contact = Contact.new

result = contact.update_contact(list_id, contact_id, contact)

```


#### <a name="get_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.get_contact") get_contact

> Get a specific contact


```ruby
def get_contact(list_id, 
                    contact_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your contact list id you want to access. |
| contact_id |  ``` Required ```  | Your contact id you want to access. |


#### Example Usage

```ruby
list_id = 230
contact_id = 230

result = contact.get_contact(list_id, contact_id)

```


#### <a name="delete_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.delete_contact") delete_contact

> Delete a contact


```ruby
def delete_contact(list_id, 
                       contact_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | TODO: Add a parameter description |
| contact_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 230
contact_id = 'contact_id'

result = contact.delete_contact(list_id, contact_id)

```


#### <a name="remove_opted_out_contacts"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.remove_opted_out_contacts") remove_opted_out_contacts

> Remove all opted out contacts


```ruby
def remove_opted_out_contacts(list_id, 
                                  opt_out_list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |
| opt_out_list_id |  ``` Required ```  | Your opt out list id |


#### Example Usage

```ruby
list_id = 230
opt_out_list_id = 230

result = contact.remove_opted_out_contacts(list_id, opt_out_list_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="contact_list_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ContactListController") ContactListController

#### Get singleton instance

The singleton instance of the ``` ContactListController ``` class can be accessed from the API Client.

```ruby
contactList = client.contact_list
```

#### <a name="get_contact_lists"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.get_contact_lists") get_contact_lists

> Get all contact lists


```ruby
def get_contact_lists; end
```

#### Example Usage

```ruby

result = contactList.get_contact_lists()

```


#### <a name="create_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.create_contact_list") create_contact_list

> Create new contact list


```ruby
def create_contact_list(list_name); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_name |  ``` Required ```  | Your contact list name |


#### Example Usage

```ruby
list_name = 'list_name'

result = contactList.create_contact_list(list_name)

```


#### <a name="get_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.get_contact_list") get_contact_list

> Get specific contact list


```ruby
def get_contact_list(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 230

result = contactList.get_contact_list(list_id)

```


#### <a name="update_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.update_contact_list") update_contact_list

> Update specific contact list


```ruby
def update_contact_list(list_id, 
                            list_name); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |
| list_name |  ``` Required ```  | Your new list name |


#### Example Usage

```ruby
list_id = 230
list_name = 'list_name'

result = contactList.update_contact_list(list_id, list_name)

```


#### <a name="delete_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.delete_contact_list") delete_contact_list

> Delete a specific contact list


```ruby
def delete_contact_list(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 230

result = contactList.delete_contact_list(list_id)

```


#### <a name="remove_duplicate_contacts"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.remove_duplicate_contacts") remove_duplicate_contacts

> Remove duplicate contacts


```ruby
def remove_duplicate_contacts(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |


#### Example Usage

```ruby
list_id = 230

result = contactList.remove_duplicate_contacts(list_id)

```


#### <a name="import_contacts_to_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.import_contacts_to_list") import_contacts_to_list

> Import contacts to list


```ruby
def import_contacts_to_list(list_id, 
                                file); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your contact list id you want to access. |
| file |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 230
file = Faraday::UploadIO.new('PathToFile', 'application/octet-stream')

result = contactList.import_contacts_to_list(list_id, file)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="reseller_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ResellerAccountController") ResellerAccountController

#### Get singleton instance

The singleton instance of the ``` ResellerAccountController ``` class can be accessed from the API Client.

```ruby
resellerAccount = client.reseller_account
```

#### <a name="update_reseller_account"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.update_reseller_account") update_reseller_account

> Reseller Account


```ruby
def update_reseller_account(client_user_id, 
                                username, 
                                password, 
                                user_email, 
                                user_phone, 
                                user_first_name, 
                                user_last_name, 
                                account_name, 
                                country); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| client_user_id |  ``` Required ```  | TODO: Add a parameter description |
| username |  ``` Required ```  | TODO: Add a parameter description |
| password |  ``` Required ```  | TODO: Add a parameter description |
| user_email |  ``` Required ```  | TODO: Add a parameter description |
| user_phone |  ``` Required ```  | TODO: Add a parameter description |
| user_first_name |  ``` Required ```  | TODO: Add a parameter description |
| user_last_name |  ``` Required ```  | TODO: Add a parameter description |
| account_name |  ``` Required ```  | TODO: Add a parameter description |
| country |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
client_user_id = 'client_user_id'
username = 'username'
password = 'password'
user_email = 'user_email'
user_phone = 'user_phone'
user_first_name = 'user_first_name'
user_last_name = 'user_last_name'
account_name = 'account_name'
country = 'country'

result = resellerAccount.update_reseller_account(client_user_id, username, password, user_email, user_phone, user_first_name, user_last_name, account_name, country)

```


#### <a name="get_reseller_accounts"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.get_reseller_accounts") get_reseller_accounts

> Get list of reseller accounts


```ruby
def get_reseller_accounts; end
```

#### Example Usage

```ruby

result = resellerAccount.get_reseller_accounts()

```


#### <a name="create_reseller_account"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.create_reseller_account") create_reseller_account

> Create reseller account


```ruby
def create_reseller_account(account); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
account = ResellerAccount.new

result = resellerAccount.create_reseller_account(account)

```


#### <a name="get_reseller_account"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.get_reseller_account") get_reseller_account

> Get Reseller Account


```ruby
def get_reseller_account(client_user_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| client_user_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
client_user_id = 'client_user_id'

result = resellerAccount.get_reseller_account(client_user_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".NumberController") NumberController

#### Get singleton instance

The singleton instance of the ``` NumberController ``` class can be accessed from the API Client.

```ruby
number = client.number
```

#### <a name="get_dedicated_numbers"></a>![Method: ](https://apidocs.io/img/method.png ".NumberController.get_dedicated_numbers") get_dedicated_numbers

> Get all dedicated numbers


```ruby
def get_dedicated_numbers; end
```

#### Example Usage

```ruby

result = number.get_dedicated_numbers()

```


#### <a name="purchase_dedicated_number"></a>![Method: ](https://apidocs.io/img/method.png ".NumberController.purchase_dedicated_number") purchase_dedicated_number

> Buy dedicated number


```ruby
def purchase_dedicated_number(dedicated_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| dedicated_number |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
dedicated_number = 'dedicated_number'

result = number.purchase_dedicated_number(dedicated_number)

```


#### <a name="get_dedicated_numbers_by_country"></a>![Method: ](https://apidocs.io/img/method.png ".NumberController.get_dedicated_numbers_by_country") get_dedicated_numbers_by_country

> Get all dedicated numbers by country


```ruby
def get_dedicated_numbers_by_country(country, 
                                         search = nil, 
                                         search_type = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Required ```  | TODO: Add a parameter description |
| search |  ``` Optional ```  | Your search pattern or query. |
| search_type |  ``` Optional ```  | Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with. |


#### Example Usage

```ruby
country = 'country'
search = 'search'
search_type = 230

result = number.get_dedicated_numbers_by_country(country, search, search_type)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="statistics_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StatisticsController") StatisticsController

#### Get singleton instance

The singleton instance of the ``` StatisticsController ``` class can be accessed from the API Client.

```ruby
statistics = client.statistics
```

#### <a name="get_voice_statistics"></a>![Method: ](https://apidocs.io/img/method.png ".StatisticsController.get_voice_statistics") get_voice_statistics

> Get voice statistics


```ruby
def get_voice_statistics; end
```

#### Example Usage

```ruby

result = statistics.get_voice_statistics()

```


#### <a name="get_sms_statistics"></a>![Method: ](https://apidocs.io/img/method.png ".StatisticsController.get_sms_statistics") get_sms_statistics

> Get sms statistics


```ruby
def get_sms_statistics; end
```

#### Example Usage

```ruby

result = statistics.get_sms_statistics()

```


[Back to List of Controllers](#list_of_controllers)

### <a name="email_to_sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailToSmsController") EmailToSmsController

#### Get singleton instance

The singleton instance of the ``` EmailToSmsController ``` class can be accessed from the API Client.

```ruby
emailToSms = client.email_to_sms
```

#### <a name="create_allowed_address"></a>![Method: ](https://apidocs.io/img/method.png ".EmailToSmsController.create_allowed_address") create_allowed_address

> Create email to sms allowed address


```ruby
def create_allowed_address(email_address, 
                               from); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email_address |  ``` Required ```  | Your email address. |
| from |  ``` Required ```  | Your phone number in E.164 format. |


#### Example Usage

```ruby
email_address = 'email_address'
from = 'from'

result = emailToSms.create_allowed_address(email_address, from)

```


#### <a name="get_allowed_address"></a>![Method: ](https://apidocs.io/img/method.png ".EmailToSmsController.get_allowed_address") get_allowed_address

> Get list of email to sms allowed addresses


```ruby
def get_allowed_address; end
```

#### Example Usage

```ruby

result = emailToSms.get_allowed_address()

```


[Back to List of Controllers](#list_of_controllers)

### <a name="search_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SearchController") SearchController

#### Get singleton instance

The singleton instance of the ``` SearchController ``` class can be accessed from the API Client.

```ruby
search = client.search
```

#### <a name="search_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".SearchController.search_contact_list") search_contact_list

> Get list of searched contact list


```ruby
def search_contact_list(q); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| q |  ``` Required ```  | Your keyword or query. |


#### Example Usage

```ruby
q = 'q'

result = search.search_contact_list(q)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="referral_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ReferralAccountController") ReferralAccountController

#### Get singleton instance

The singleton instance of the ``` ReferralAccountController ``` class can be accessed from the API Client.

```ruby
referralAccount = client.referral_account
```

#### <a name="get_referral_accounts"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralAccountController.get_referral_accounts") get_referral_accounts

> Get all referral accounts


```ruby
def get_referral_accounts; end
```

#### Example Usage

```ruby

result = referralAccount.get_referral_accounts()

```


[Back to List of Controllers](#list_of_controllers)

### <a name="transfer_credit_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TransferCreditController") TransferCreditController

#### Get singleton instance

The singleton instance of the ``` TransferCreditController ``` class can be accessed from the API Client.

```ruby
transferCredit = client.transfer_credit
```

#### <a name="transfer_credit"></a>![Method: ](https://apidocs.io/img/method.png ".TransferCreditController.transfer_credit") transfer_credit

> Transfer Credit


```ruby
def transfer_credit(client_user_id, 
                        balance, 
                        currency); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| client_user_id |  ``` Required ```  | TODO: Add a parameter description |
| balance |  ``` Required ```  | TODO: Add a parameter description |
| currency |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
client_user_id = 'client_user_id'
balance = 230
currency = 'currency'

result = transferCredit.transfer_credit(client_user_id, balance, currency)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="post_return_address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostReturnAddressController") PostReturnAddressController

#### Get singleton instance

The singleton instance of the ``` PostReturnAddressController ``` class can be accessed from the API Client.

```ruby
postReturnAddress = client.post_return_address
```

#### <a name="update_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.update_post_return_address") update_post_return_address

> Update post return address


```ruby
def update_post_return_address(return_address_id, 
                                   address_name, 
                                   address_line_1, 
                                   address_line_2, 
                                   address_city, 
                                   address_state, 
                                   address_postal_code, 
                                   address_country); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address_id |  ``` Required ```  | TODO: Add a parameter description |
| address_name |  ``` Required ```  | TODO: Add a parameter description |
| address_line_1 |  ``` Required ```  | TODO: Add a parameter description |
| address_line_2 |  ``` Required ```  | TODO: Add a parameter description |
| address_city |  ``` Required ```  | TODO: Add a parameter description |
| address_state |  ``` Required ```  | TODO: Add a parameter description |
| address_postal_code |  ``` Required ```  | TODO: Add a parameter description |
| address_country |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
return_address_id = 230
address_name = 'address_name'
address_line_1 = 'address_line_1'
address_line_2 = 'address_line_2'
address_city = 'address_city'
address_state = 'address_state'
address_postal_code = 'address_postal_code'
address_country = 'address_country'

result = postReturnAddress.update_post_return_address(return_address_id, address_name, address_line_1, address_line_2, address_city, address_state, address_postal_code, address_country)

```


#### <a name="create_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.create_post_return_address") create_post_return_address

> Create post return address


```ruby
def create_post_return_address(address); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| address |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
address = PostReturnAddress.new

result = postReturnAddress.create_post_return_address(address)

```


#### <a name="get_post_return_addresses"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.get_post_return_addresses") get_post_return_addresses

> Get list of post return addresses


```ruby
def get_post_return_addresses; end
```

#### Example Usage

```ruby

result = postReturnAddress.get_post_return_addresses()

```


#### <a name="get_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.get_post_return_address") get_post_return_address

> Get specific post return address


```ruby
def get_post_return_address(return_address_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
return_address_id = 230

result = postReturnAddress.get_post_return_address(return_address_id)

```


#### <a name="delete_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.delete_post_return_address") delete_post_return_address

> Delete specific post return address


```ruby
def delete_post_return_address(return_address_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
return_address_id = 230

result = postReturnAddress.delete_post_return_address(return_address_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="account_recharge_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountRechargeController") AccountRechargeController

#### Get singleton instance

The singleton instance of the ``` AccountRechargeController ``` class can be accessed from the API Client.

```ruby
accountRecharge = client.account_recharge
```

#### <a name="get_credit_card_info"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_credit_card_info") get_credit_card_info

> Get Credit Card info


```ruby
def get_credit_card_info; end
```

#### Example Usage

```ruby

result = accountRecharge.get_credit_card_info()

```


#### <a name="update_credit_card_info"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.update_credit_card_info") update_credit_card_info

> Update credit card info


```ruby
def update_credit_card_info(number, 
                                expiry_month, 
                                expiry_year, 
                                cvc, 
                                name); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | TODO: Add a parameter description |
| expiry_month |  ``` Required ```  | TODO: Add a parameter description |
| expiry_year |  ``` Required ```  | TODO: Add a parameter description |
| cvc |  ``` Required ```  | TODO: Add a parameter description |
| name |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
number = 'number'
expiry_month = 67
expiry_year = 67
cvc = 67
name = 'name'

result = accountRecharge.update_credit_card_info(number, expiry_month, expiry_year, cvc, name)

```


#### <a name="get_packages_list"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_packages_list") get_packages_list

> Get list of all packages


```ruby
def get_packages_list(country = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
country = 'country'

result = accountRecharge.get_packages_list(country)

```


#### <a name="purchase_package"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.purchase_package") purchase_package

> Purchase a package


```ruby
def purchase_package(package_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| package_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
package_id = 67

result = accountRecharge.purchase_package(package_id)

```


#### <a name="get_transactions"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_transactions") get_transactions

> Get all transactions


```ruby
def get_transactions; end
```

#### Example Usage

```ruby

result = accountRecharge.get_transactions()

```


#### <a name="get_transaction"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_transaction") get_transaction

> Get specific Transaction


```ruby
def get_transaction(transaction_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transaction_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
transaction_id = 'transaction_id'

result = accountRecharge.get_transaction(transaction_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="sms_campaign_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SmsCampaignController") SmsCampaignController

#### Get singleton instance

The singleton instance of the ``` SmsCampaignController ``` class can be accessed from the API Client.

```ruby
smsCampaign = client.sms_campaign
```

#### <a name="create_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.create_sms_campaign") create_sms_campaign

> Create sms campaign


```ruby
def create_sms_campaign(campaign); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| campaign |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
campaign = SmsCampaign.new

result = smsCampaign.create_sms_campaign(campaign)

```


#### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.calculate_price") calculate_price

> Calculate price for sms campaign


```ruby
def calculate_price(list_id, 
                        name, 
                        from, 
                        body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | TODO: Add a parameter description |
| name |  ``` Required ```  | TODO: Add a parameter description |
| from |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
list_id = 67
name = 'name'
from = 'from'
body = 'body'

result = smsCampaign.calculate_price(list_id, name, from, body)

```


#### <a name="update_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.update_sms_campaign") update_sms_campaign

> Update sms campaign


```ruby
def update_sms_campaign(sms_campaign_id, 
                            list_id, 
                            name, 
                            from, 
                            body, 
                            schedule); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_campaign_id |  ``` Required ```  | TODO: Add a parameter description |
| list_id |  ``` Required ```  | TODO: Add a parameter description |
| name |  ``` Required ```  | TODO: Add a parameter description |
| from |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |
| schedule |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
sms_campaign_id = 67
list_id = 67
name = 'name'
from = 'from'
body = 'body'
schedule = 'schedule'

result = smsCampaign.update_sms_campaign(sms_campaign_id, list_id, name, from, body, schedule)

```


#### <a name="cancel_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.cancel_sms_campaign") cancel_sms_campaign

> Cancel sms campaign


```ruby
def cancel_sms_campaign(sms_campaign_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_campaign_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
sms_campaign_id = 67

result = smsCampaign.cancel_sms_campaign(sms_campaign_id)

```


#### <a name="get_sms_campaigns"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.get_sms_campaigns") get_sms_campaigns

> Get list of sms campaigns


```ruby
def get_sms_campaigns; end
```

#### Example Usage

```ruby

result = smsCampaign.get_sms_campaigns()

```


#### <a name="get_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.get_sms_campaign") get_sms_campaign

> Get specific sms campaign


```ruby
def get_sms_campaign(sms_campaign_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_campaign_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
sms_campaign_id = 67

result = smsCampaign.get_sms_campaign(sms_campaign_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="post_letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostLetterController") PostLetterController

#### Get singleton instance

The singleton instance of the ``` PostLetterController ``` class can be accessed from the API Client.

```ruby
postLetter = client.post_letter
```

#### <a name="send_post_letter"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.send_post_letter") send_post_letter

> Send post letter


```ruby
def send_post_letter(attributes); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| attributes |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
attributes = ['attributes']

result = postLetter.send_post_letter(attributes)

```


#### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.calculate_price") calculate_price

> Calculate post letter price


```ruby
def calculate_price(attributes); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| attributes |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
attributes = ['attributes']

result = postLetter.calculate_price(attributes)

```


#### <a name="get_post_letter_history"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.get_post_letter_history") get_post_letter_history

> Get all post letter history


```ruby
def get_post_letter_history; end
```

#### Example Usage

```ruby

result = postLetter.get_post_letter_history()

```


#### <a name="export_post_letter_history"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.export_post_letter_history") export_post_letter_history

> export post letter history


```ruby
def export_post_letter_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
filename = 'filename'

result = postLetter.export_post_letter_history(filename)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="upload_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UploadController") UploadController

#### Get singleton instance

The singleton instance of the ``` UploadController ``` class can be accessed from the API Client.

```ruby
upload = client.upload
```

#### <a name="upload_file"></a>![Method: ](https://apidocs.io/img/method.png ".UploadController.upload_file") upload_file

> Upload a file


```ruby
def upload_file(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
filename = Faraday::UploadIO.new('PathToFile', 'application/octet-stream')

result = upload.upload_file(filename)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="mms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MMSController") MMSController

#### Get singleton instance

The singleton instance of the ``` MMSController ``` class can be accessed from the API Client.

```ruby
mMS = client.mms
```

#### <a name="get_price"></a>![Method: ](https://apidocs.io/img/method.png ".MMSController.get_price") get_price

> Get Price for MMS sent


```ruby
def get_price(messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
messages = [MmsMessage.new]

result = mMS.get_price(messages)

```


#### <a name="send_mms"></a>![Method: ](https://apidocs.io/img/method.png ".MMSController.send_mms") send_mms

> TODO: Add a method description


```ruby
def send_mms(messages, 
                 media_file); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |
| media_file |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
messages = [{ 'key' => 'value' }]
media_file = 'media_file'

result = mMS.send_mms(messages, media_file)

```


[Back to List of Controllers](#list_of_controllers)



