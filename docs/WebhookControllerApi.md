# maislurp-client-powershell.maislurp-client-powershell/Api.WebhookControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-AccountWebhook**](WebhookControllerApi#New-AccountWebhook) | **POST** /webhooks | Attach a WebHook URL to an inbox
[**New-Webhook**](WebhookControllerApi#New-Webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**New-WebhookForAITransformer**](WebhookControllerApi#New-WebhookForAITransformer) | **POST** /ai-transformers/{transformerId}/webhooks | Attach a WebHook URL to an AI transformer
[**New-WebhookForPhoneNumber**](WebhookControllerApi#New-WebhookForPhoneNumber) | **POST** /phone/numbers/{phoneNumberId}/webhooks | Attach a WebHook URL to a phone number
[**Invoke-DeleteAllWebhooks**](WebhookControllerApi#Invoke-DeleteAllWebhooks) | **DELETE** /webhooks | Delete all webhooks
[**Invoke-DeleteWebhook**](WebhookControllerApi#Invoke-DeleteWebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**Invoke-DeleteWebhookById**](WebhookControllerApi#Invoke-DeleteWebhookById) | **DELETE** /webhooks/{webhookId} | Delete a webhook
[**Get-AllAccountWebhooks**](WebhookControllerApi#Get-AllAccountWebhooks) | **GET** /webhooks/account/paginated | List account webhooks Paginated
[**Get-AllWebhookEndpoints**](WebhookControllerApi#Get-AllWebhookEndpoints) | **GET** /webhooks/endpoints | List Webhooks endpoints Paginated
[**Get-AllWebhookResults**](WebhookControllerApi#Get-AllWebhookResults) | **GET** /webhooks/results | Get results for all webhooks
[**Get-AllWebhooks**](WebhookControllerApi#Get-AllWebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**Get-InboxWebhooksPaginated**](WebhookControllerApi#Get-InboxWebhooksPaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**Get-JsonSchemaForWebhookEvent**](WebhookControllerApi#Get-JsonSchemaForWebhookEvent) | **POST** /webhooks/schema | 
[**Get-JsonSchemaForWebhookPayload**](WebhookControllerApi#Get-JsonSchemaForWebhookPayload) | **POST** /webhooks/{webhookId}/schema | 
[**Get-PhoneNumberWebhooksPaginated**](WebhookControllerApi#Get-PhoneNumberWebhooksPaginated) | **GET** /phone/numbers/{phoneId}/webhooks/paginated | Get paginated webhooks for a phone number
[**Get-TestWebhookPayload**](WebhookControllerApi#Get-TestWebhookPayload) | **GET** /webhooks/test | 
[**Get-TestWebhookPayloadBounce**](WebhookControllerApi#Get-TestWebhookPayloadBounce) | **GET** /webhooks/test/email-bounce-payload | 
[**Get-TestWebhookPayloadBounceRecipient**](WebhookControllerApi#Get-TestWebhookPayloadBounceRecipient) | **GET** /webhooks/test/email-bounce-recipient-payload | 
[**Get-TestWebhookPayloadDeliveryStatus**](WebhookControllerApi#Get-TestWebhookPayloadDeliveryStatus) | **GET** /webhooks/test/delivery-status-payload | Get webhook test payload for delivery status event
[**Get-TestWebhookPayloadEmailOpened**](WebhookControllerApi#Get-TestWebhookPayloadEmailOpened) | **GET** /webhooks/test/email-opened-payload | 
[**Get-TestWebhookPayloadEmailRead**](WebhookControllerApi#Get-TestWebhookPayloadEmailRead) | **GET** /webhooks/test/email-read-payload | 
[**Get-TestWebhookPayloadForWebhook**](WebhookControllerApi#Get-TestWebhookPayloadForWebhook) | **POST** /webhooks/{webhookId}/example | 
[**Get-TestWebhookPayloadNewAITransformResult**](WebhookControllerApi#Get-TestWebhookPayloadNewAITransformResult) | **GET** /webhooks/test/new-ai-transform-result-payload | Get webhook test payload for new ai transform result event
[**Get-TestWebhookPayloadNewAttachment**](WebhookControllerApi#Get-TestWebhookPayloadNewAttachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**Get-TestWebhookPayloadNewContact**](WebhookControllerApi#Get-TestWebhookPayloadNewContact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**Get-TestWebhookPayloadNewEmail**](WebhookControllerApi#Get-TestWebhookPayloadNewEmail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**Get-TestWebhookPayloadNewSms**](WebhookControllerApi#Get-TestWebhookPayloadNewSms) | **GET** /webhooks/test/new-sms-payload | Get webhook test payload for new sms event
[**Get-Webhook**](WebhookControllerApi#Get-Webhook) | **GET** /webhooks/{webhookId} | Get a webhook
[**Get-WebhookResult**](WebhookControllerApi#Get-WebhookResult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**Get-WebhookResults**](WebhookControllerApi#Get-WebhookResults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**Get-WebhookResultsCount**](WebhookControllerApi#Get-WebhookResultsCount) | **GET** /webhooks/{webhookId}/results/count | Get a webhook results count for a webhook
[**Get-WebhookResultsUnseenErrorCount**](WebhookControllerApi#Get-WebhookResultsUnseenErrorCount) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**Get-Webhooks**](WebhookControllerApi#Get-Webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**Invoke-RedriveAllWebhookResults**](WebhookControllerApi#Invoke-RedriveAllWebhookResults) | **POST** /webhooks/results/redrive | Redrive all webhook results that have failed status
[**Invoke-RedriveWebhookResult**](WebhookControllerApi#Invoke-RedriveWebhookResult) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**Send-TestData**](WebhookControllerApi#Send-TestData) | **POST** /webhooks/{webhookId}/test | Send webhook test data
[**Update-Webhook**](WebhookControllerApi#Update-Webhook) | **PATCH** /webhooks/{webhookId} | Update a webhook
[**Update-WebhookHeaders**](WebhookControllerApi#Update-WebhookHeaders) | **PUT** /webhooks/{webhookId}/headers | Update a webhook request headers
[**Test-WebhookSignature**](WebhookControllerApi#Test-WebhookSignature) | **POST** /webhooks/verify | Verify a webhook payload signature
[**Wait-ForWebhookResults**](WebhookControllerApi#Wait-ForWebhookResults) | **GET** /webhooks/{webhookId}/wait | Wait for webhook results for a webhook


<a name="New-AccountWebhook"></a>
# **New-AccountWebhook**
> WebhookDto New-AccountWebhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWebhookOptions] <PSCustomObject><br>

Attach a WebHook URL to an inbox

Get notified of account level events such as bounce and bounce recipient.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateWebhookOptions = (Initialize-CreateWebhookOptions -Url "Url_example" -BasicAuth (Initialize-BasicAuthOptions -Username "Username_example" -Password "Password_example") -Name "Name_example" -EventName "EMAIL_RECEIVED" -IncludeHeaders (Initialize-WebhookHeaders -Headers @((Initialize-WebhookHeaderNameValue -Name "Name_example" -Value "Value_example"))) -RequestBodyTemplate "RequestBodyTemplate_example" -AiTransformId "AiTransformId_example" -UseStaticIpRange $false -IgnoreInsecureSslCertificates $false -Tags @("Tags_example")) # CreateWebhookOptions | 

# Attach a WebHook URL to an inbox
try {
     $Result = New-AccountWebhook -CreateWebhookOptions $CreateWebhookOptions
} catch {
    Write-Host ("Exception occured when calling New-AccountWebhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-Webhook"></a>
# **New-Webhook**
> WebhookDto New-Webhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWebhookOptions] <PSCustomObject><br>

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$CreateWebhookOptions = (Initialize-CreateWebhookOptions -Url "Url_example" -BasicAuth (Initialize-BasicAuthOptions -Username "Username_example" -Password "Password_example") -Name "Name_example" -EventName "EMAIL_RECEIVED" -IncludeHeaders (Initialize-WebhookHeaders -Headers @((Initialize-WebhookHeaderNameValue -Name "Name_example" -Value "Value_example"))) -RequestBodyTemplate "RequestBodyTemplate_example" -AiTransformId "AiTransformId_example" -UseStaticIpRange $false -IgnoreInsecureSslCertificates $false -Tags @("Tags_example")) # CreateWebhookOptions | 

# Attach a WebHook URL to an inbox
try {
     $Result = New-Webhook -InboxId $InboxId -CreateWebhookOptions $CreateWebhookOptions
} catch {
    Write-Host ("Exception occured when calling New-Webhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **CreateWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-WebhookForAITransformer"></a>
# **New-WebhookForAITransformer**
> WebhookDto New-WebhookForAITransformer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransformerId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWebhookOptions] <PSCustomObject><br>

Attach a WebHook URL to an AI transformer

Get notified whenever AI transformation pipeline converts and email or SMS into structured data via a WebHook URL.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TransformerId = "TransformerId_example" # String | 
$CreateWebhookOptions =  # CreateWebhookOptions | 

# Attach a WebHook URL to an AI transformer
try {
     $Result = New-WebhookForAITransformer -TransformerId $TransformerId -CreateWebhookOptions $CreateWebhookOptions
} catch {
    Write-Host ("Exception occured when calling New-WebhookForAITransformer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TransformerId** | [**String**](String)|  | 
 **CreateWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-WebhookForPhoneNumber"></a>
# **New-WebhookForPhoneNumber**
> WebhookDto New-WebhookForPhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWebhookOptions] <PSCustomObject><br>

Attach a WebHook URL to a phone number

Get notified whenever a phone number receives an SMS via a WebHook URL.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$CreateWebhookOptions =  # CreateWebhookOptions | 

# Attach a WebHook URL to a phone number
try {
     $Result = New-WebhookForPhoneNumber -PhoneNumberId $PhoneNumberId -CreateWebhookOptions $CreateWebhookOptions
} catch {
    Write-Host ("Exception occured when calling New-WebhookForPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **CreateWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllWebhooks"></a>
# **Invoke-DeleteAllWebhooks**
> void Invoke-DeleteAllWebhooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Delete all webhooks

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Before = Get-Date # System.DateTime | before (optional)

# Delete all webhooks
try {
     $Result = Invoke-DeleteAllWebhooks -Before $Before
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllWebhooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Before** | **System.DateTime**| before | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteWebhook"></a>
# **Invoke-DeleteWebhook**
> void Invoke-DeleteWebhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>

Delete and disable a Webhook for an Inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$WebhookId = "WebhookId_example" # String | 

# Delete and disable a Webhook for an Inbox
try {
     $Result = Invoke-DeleteWebhook -InboxId $InboxId -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteWebhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **WebhookId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteWebhookById"></a>
# **Invoke-DeleteWebhookById**
> void Invoke-DeleteWebhookById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>

Delete a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 

# Delete a webhook
try {
     $Result = Invoke-DeleteWebhookById -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteWebhookById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllAccountWebhooks"></a>
# **Get-AllAccountWebhooks**
> PageWebhookProjection Get-AllAccountWebhooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Health] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>

List account webhooks Paginated

List account webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$EventType = "EMAIL_RECEIVED" # String | Optional event type (optional)
$Health = "HEALTHY" # String | Filter by webhook health (optional)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)

# List account webhooks Paginated
try {
     $Result = Get-AllAccountWebhooks -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -EventType $EventType -Health $Health -SearchFilter $SearchFilter
} catch {
    Write-Host ("Exception occured when calling Get-AllAccountWebhooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **EventType** | **String**| Optional event type | [optional] 
 **Health** | **String**| Filter by webhook health | [optional] 
 **SearchFilter** | **String**| Optional search filter | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllWebhookEndpoints"></a>
# **Get-AllWebhookEndpoints**
> PageWebhookEndpointProjection Get-AllWebhookEndpoints<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Health] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>

List Webhooks endpoints Paginated

List webhooks URL in paginated form. Allows for page index, page size, and sort direction.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$InboxId = "InboxId_example" # String | Filter by inboxId (optional)
$PhoneId = "PhoneId_example" # String | Filter by phoneId (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Health = "HEALTHY" # String | Filter by webhook health (optional)
$EventType = "EMAIL_RECEIVED" # String | Optional event type (optional)

# List Webhooks endpoints Paginated
try {
     $Result = Get-AllWebhookEndpoints -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -InboxId $InboxId -PhoneId $PhoneId -Before $Before -Health $Health -EventType $EventType
} catch {
    Write-Host ("Exception occured when calling Get-AllWebhookEndpoints: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **InboxId** | [**String**](String)| Filter by inboxId | [optional] 
 **PhoneId** | [**String**](String)| Filter by phoneId | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Health** | **String**| Filter by webhook health | [optional] 
 **EventType** | **String**| Optional event type | [optional] 

### Return type

[**PageWebhookEndpointProjection**](PageWebhookEndpointProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllWebhookResults"></a>
# **Get-AllWebhookResults**
> PageWebhookResult Get-AllWebhookResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnseenOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResultType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinStatusCode] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxStatusCode] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformerId] <PSCustomObject><br>

Get results for all webhooks

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$UnseenOnly = true # Boolean | Filter for unseen exceptions only (optional)
$ResultType = "BAD_RESPONSE" # String | Filter by result type (optional)
$EventName = "EMAIL_RECEIVED" # String | Filter by event name (optional)
$MinStatusCode = 987 # Int32 | Minimum response status (optional)
$MaxStatusCode = 987 # Int32 | Maximum response status (optional)
$InboxId = "InboxId_example" # String | Inbox ID (optional)
$SmsId = "SmsId_example" # String | Sms ID (optional)
$AttachmentId = "AttachmentId_example" # String | Attachment ID (optional)
$EmailId = "EmailId_example" # String | Email ID (optional)
$PhoneId = "PhoneId_example" # String | Phone ID (optional)
$AiTransformerId = "AiTransformerId_example" # String | AI Transformer ID (optional)

# Get results for all webhooks
try {
     $Result = Get-AllWebhookResults -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before -UnseenOnly $UnseenOnly -ResultType $ResultType -EventName $EventName -MinStatusCode $MinStatusCode -MaxStatusCode $MaxStatusCode -InboxId $InboxId -SmsId $SmsId -AttachmentId $AttachmentId -EmailId $EmailId -PhoneId $PhoneId -AiTransformerId $AiTransformerId
} catch {
    Write-Host ("Exception occured when calling Get-AllWebhookResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **UnseenOnly** | **Boolean**| Filter for unseen exceptions only | [optional] 
 **ResultType** | **String**| Filter by result type | [optional] 
 **EventName** | **String**| Filter by event name | [optional] 
 **MinStatusCode** | **Int32**| Minimum response status | [optional] 
 **MaxStatusCode** | **Int32**| Maximum response status | [optional] 
 **InboxId** | [**String**](String)| Inbox ID | [optional] 
 **SmsId** | [**String**](String)| Sms ID | [optional] 
 **AttachmentId** | [**String**](String)| Attachment ID | [optional] 
 **EmailId** | [**String**](String)| Email ID | [optional] 
 **PhoneId** | [**String**](String)| Phone ID | [optional] 
 **AiTransformerId** | [**String**](String)| AI Transformer ID | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllWebhooks"></a>
# **Get-AllWebhooks**
> PageWebhookProjection Get-AllWebhooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformerId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Health] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Url] <String><br>

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$InboxId = "InboxId_example" # String | Filter by inboxId (optional)
$AiTransformerId = "AiTransformerId_example" # String | Filter by aiTransformerId (optional)
$PhoneId = "PhoneId_example" # String | Filter by phoneId (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Health = "HEALTHY" # String | Filter by webhook health (optional)
$EventType = "EMAIL_RECEIVED" # String | Optional event type (optional)
$Url = "Url_example" # String | Optional url endpoint filter (optional)

# List Webhooks Paginated
try {
     $Result = Get-AllWebhooks -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -InboxId $InboxId -AiTransformerId $AiTransformerId -PhoneId $PhoneId -Before $Before -Health $Health -EventType $EventType -Url $Url
} catch {
    Write-Host ("Exception occured when calling Get-AllWebhooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **InboxId** | [**String**](String)| Filter by inboxId | [optional] 
 **AiTransformerId** | [**String**](String)| Filter by aiTransformerId | [optional] 
 **PhoneId** | [**String**](String)| Filter by phoneId | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Health** | **String**| Filter by webhook health | [optional] 
 **EventType** | **String**| Optional event type | [optional] 
 **Url** | **String**| Optional url endpoint filter | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxWebhooksPaginated"></a>
# **Get-InboxWebhooksPaginated**
> PageWebhookProjection Get-InboxWebhooksPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Health] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>

Get paginated webhooks for an Inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Health = "HEALTHY" # String | Filter by webhook health (optional)
$EventType = "EMAIL_RECEIVED" # String | Optional event type (optional)

# Get paginated webhooks for an Inbox
try {
     $Result = Get-InboxWebhooksPaginated -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before -Health $Health -EventType $EventType
} catch {
    Write-Host ("Exception occured when calling Get-InboxWebhooksPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Health** | **String**| Filter by webhook health | [optional] 
 **EventType** | **String**| Optional event type | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-JsonSchemaForWebhookEvent"></a>
# **Get-JsonSchemaForWebhookEvent**
> JSONSchemaDto Get-JsonSchemaForWebhookEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Event] <String><br>



Get JSON Schema definition for webhook payload by event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Event = "EMAIL_RECEIVED" # String | 

try {
     $Result = Get-JsonSchemaForWebhookEvent -Event $Event
} catch {
    Write-Host ("Exception occured when calling Get-JsonSchemaForWebhookEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Event** | **String**|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-JsonSchemaForWebhookPayload"></a>
# **Get-JsonSchemaForWebhookPayload**
> JSONSchemaDto Get-JsonSchemaForWebhookPayload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>



Get JSON Schema definition for webhook payload

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 

try {
     $Result = Get-JsonSchemaForWebhookPayload -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Get-JsonSchemaForWebhookPayload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumberWebhooksPaginated"></a>
# **Get-PhoneNumberWebhooksPaginated**
> PageWebhookProjection Get-PhoneNumberWebhooksPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Health] <String><br>

Get paginated webhooks for a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneId = "PhoneId_example" # String | 
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$EventType = "EMAIL_RECEIVED" # String | Optional event type (optional)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Health = "HEALTHY" # String | Filter by webhook health (optional)

# Get paginated webhooks for a phone number
try {
     $Result = Get-PhoneNumberWebhooksPaginated -PhoneId $PhoneId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -EventType $EventType -SearchFilter $SearchFilter -Health $Health
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumberWebhooksPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **EventType** | **String**| Optional event type | [optional] 
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Health** | **String**| Filter by webhook health | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayload"></a>
# **Get-TestWebhookPayload**
> AbstractWebhookPayload Get-TestWebhookPayload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventName] <String><br>



Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EventName = "EMAIL_RECEIVED" # String |  (optional)

try {
     $Result = Get-TestWebhookPayload -EventName $EventName
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventName** | **String**|  | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadBounce"></a>
# **Get-TestWebhookPayloadBounce**
> WebhookBouncePayload Get-TestWebhookPayloadBounce<br>



Get webhook test payload for bounce

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-TestWebhookPayloadBounce
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadBounce: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookBouncePayload**](WebhookBouncePayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadBounceRecipient"></a>
# **Get-TestWebhookPayloadBounceRecipient**
> WebhookBounceRecipientPayload Get-TestWebhookPayloadBounceRecipient<br>



Get webhook test payload for bounce recipient

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-TestWebhookPayloadBounceRecipient
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadBounceRecipient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookBounceRecipientPayload**](WebhookBounceRecipientPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadDeliveryStatus"></a>
# **Get-TestWebhookPayloadDeliveryStatus**
> WebhookDeliveryStatusPayload Get-TestWebhookPayloadDeliveryStatus<br>

Get webhook test payload for delivery status event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get webhook test payload for delivery status event
try {
     $Result = Get-TestWebhookPayloadDeliveryStatus
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadDeliveryStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookDeliveryStatusPayload**](WebhookDeliveryStatusPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadEmailOpened"></a>
# **Get-TestWebhookPayloadEmailOpened**
> WebhookEmailOpenedPayload Get-TestWebhookPayloadEmailOpened<br>



Get webhook test payload for email opened event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-TestWebhookPayloadEmailOpened
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadEmailOpened: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEmailOpenedPayload**](WebhookEmailOpenedPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadEmailRead"></a>
# **Get-TestWebhookPayloadEmailRead**
> WebhookEmailReadPayload Get-TestWebhookPayloadEmailRead<br>



Get webhook test payload for email opened event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-TestWebhookPayloadEmailRead
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadEmailRead: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEmailReadPayload**](WebhookEmailReadPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadForWebhook"></a>
# **Get-TestWebhookPayloadForWebhook**
> AbstractWebhookPayload Get-TestWebhookPayloadForWebhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>



Get example payload for webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 

try {
     $Result = Get-TestWebhookPayloadForWebhook -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadForWebhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadNewAITransformResult"></a>
# **Get-TestWebhookPayloadNewAITransformResult**
> WebhookNewAITransformResultPayload Get-TestWebhookPayloadNewAITransformResult<br>

Get webhook test payload for new ai transform result event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get webhook test payload for new ai transform result event
try {
     $Result = Get-TestWebhookPayloadNewAITransformResult
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadNewAITransformResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewAITransformResultPayload**](WebhookNewAITransformResultPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadNewAttachment"></a>
# **Get-TestWebhookPayloadNewAttachment**
> WebhookNewAttachmentPayload Get-TestWebhookPayloadNewAttachment<br>

Get webhook test payload for new attachment event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get webhook test payload for new attachment event
try {
     $Result = Get-TestWebhookPayloadNewAttachment
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadNewAttachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewAttachmentPayload**](WebhookNewAttachmentPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadNewContact"></a>
# **Get-TestWebhookPayloadNewContact**
> WebhookNewContactPayload Get-TestWebhookPayloadNewContact<br>

Get webhook test payload for new contact event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get webhook test payload for new contact event
try {
     $Result = Get-TestWebhookPayloadNewContact
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadNewContact: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewContactPayload**](WebhookNewContactPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadNewEmail"></a>
# **Get-TestWebhookPayloadNewEmail**
> WebhookNewEmailPayload Get-TestWebhookPayloadNewEmail<br>

Get webhook test payload for new email event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get webhook test payload for new email event
try {
     $Result = Get-TestWebhookPayloadNewEmail
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadNewEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewEmailPayload**](WebhookNewEmailPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TestWebhookPayloadNewSms"></a>
# **Get-TestWebhookPayloadNewSms**
> WebhookNewSmsPayload Get-TestWebhookPayloadNewSms<br>

Get webhook test payload for new sms event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get webhook test payload for new sms event
try {
     $Result = Get-TestWebhookPayloadNewSms
} catch {
    Write-Host ("Exception occured when calling Get-TestWebhookPayloadNewSms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewSmsPayload**](WebhookNewSmsPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Webhook"></a>
# **Get-Webhook**
> WebhookDto Get-Webhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>

Get a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 

# Get a webhook
try {
     $Result = Get-Webhook -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Get-Webhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-WebhookResult"></a>
# **Get-WebhookResult**
> WebhookResultDto Get-WebhookResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookResultId] <PSCustomObject><br>

Get a webhook result for a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookResultId = "WebhookResultId_example" # String | Webhook Result ID

# Get a webhook result for a webhook
try {
     $Result = Get-WebhookResult -WebhookResultId $WebhookResultId
} catch {
    Write-Host ("Exception occured when calling Get-WebhookResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookResultId** | [**String**](String)| Webhook Result ID | 

### Return type

[**WebhookResultDto**](WebhookResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-WebhookResults"></a>
# **Get-WebhookResults**
> PageWebhookResult Get-WebhookResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnseenOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResultType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinStatusCode] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxStatusCode] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformerId] <PSCustomObject><br>

Get a webhook results for a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | ID of webhook to get results for
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$UnseenOnly = true # Boolean | Filter for unseen exceptions only (optional)
$ResultType = "BAD_RESPONSE" # String | Filter by result type (optional)
$EventName = "EMAIL_RECEIVED" # String | Filter by event name (optional)
$MinStatusCode = 987 # Int32 | Minimum response status (optional)
$MaxStatusCode = 987 # Int32 | Maximum response status (optional)
$InboxId = "InboxId_example" # String | Inbox ID (optional)
$SmsId = "SmsId_example" # String | Sms ID (optional)
$AttachmentId = "AttachmentId_example" # String | Attachment ID (optional)
$EmailId = "EmailId_example" # String | Email ID (optional)
$PhoneId = "PhoneId_example" # String | Phone ID (optional)
$AiTransformerId = "AiTransformerId_example" # String | AI Transformer ID (optional)

# Get a webhook results for a webhook
try {
     $Result = Get-WebhookResults -WebhookId $WebhookId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before -UnseenOnly $UnseenOnly -ResultType $ResultType -EventName $EventName -MinStatusCode $MinStatusCode -MaxStatusCode $MaxStatusCode -InboxId $InboxId -SmsId $SmsId -AttachmentId $AttachmentId -EmailId $EmailId -PhoneId $PhoneId -AiTransformerId $AiTransformerId
} catch {
    Write-Host ("Exception occured when calling Get-WebhookResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)| ID of webhook to get results for | 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **UnseenOnly** | **Boolean**| Filter for unseen exceptions only | [optional] 
 **ResultType** | **String**| Filter by result type | [optional] 
 **EventName** | **String**| Filter by event name | [optional] 
 **MinStatusCode** | **Int32**| Minimum response status | [optional] 
 **MaxStatusCode** | **Int32**| Maximum response status | [optional] 
 **InboxId** | [**String**](String)| Inbox ID | [optional] 
 **SmsId** | [**String**](String)| Sms ID | [optional] 
 **AttachmentId** | [**String**](String)| Attachment ID | [optional] 
 **EmailId** | [**String**](String)| Email ID | [optional] 
 **PhoneId** | [**String**](String)| Phone ID | [optional] 
 **AiTransformerId** | [**String**](String)| AI Transformer ID | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-WebhookResultsCount"></a>
# **Get-WebhookResultsCount**
> CountDto Get-WebhookResultsCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>

Get a webhook results count for a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | ID of webhook to get results for

# Get a webhook results count for a webhook
try {
     $Result = Get-WebhookResultsCount -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Get-WebhookResultsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)| ID of webhook to get results for | 

### Return type

[**CountDto**](CountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-WebhookResultsUnseenErrorCount"></a>
# **Get-WebhookResultsUnseenErrorCount**
> UnseenErrorCountDto Get-WebhookResultsUnseenErrorCount<br>

Get count of unseen webhook results with error status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get count of unseen webhook results with error status
try {
     $Result = Get-WebhookResultsUnseenErrorCount
} catch {
    Write-Host ("Exception occured when calling Get-WebhookResultsUnseenErrorCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnseenErrorCountDto**](UnseenErrorCountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Webhooks"></a>
# **Get-Webhooks**
> WebhookProjection[] Get-Webhooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get all webhooks for an Inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get all webhooks for an Inbox
try {
     $Result = Get-Webhooks -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-Webhooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**WebhookProjection[]**](WebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RedriveAllWebhookResults"></a>
# **Invoke-RedriveAllWebhookResults**
> WebhookRedriveAllResult Invoke-RedriveAllWebhookResults<br>

Redrive all webhook results that have failed status

Allows you to resend webhook payloads for any recorded webhook result that failed to deliver the payload.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Redrive all webhook results that have failed status
try {
     $Result = Invoke-RedriveAllWebhookResults
} catch {
    Write-Host ("Exception occured when calling Invoke-RedriveAllWebhookResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookRedriveAllResult**](WebhookRedriveAllResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RedriveWebhookResult"></a>
# **Invoke-RedriveWebhookResult**
> WebhookRedriveResult Invoke-RedriveWebhookResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookResultId] <PSCustomObject><br>

Get a webhook result and try to resend the original webhook payload

Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookResultId = "WebhookResultId_example" # String | Webhook Result ID

# Get a webhook result and try to resend the original webhook payload
try {
     $Result = Invoke-RedriveWebhookResult -WebhookResultId $WebhookResultId
} catch {
    Write-Host ("Exception occured when calling Invoke-RedriveWebhookResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookResultId** | [**String**](String)| Webhook Result ID | 

### Return type

[**WebhookRedriveResult**](WebhookRedriveResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-TestData"></a>
# **Send-TestData**
> WebhookTestResult Send-TestData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>

Send webhook test data

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 

# Send webhook test data
try {
     $Result = Send-TestData -WebhookId $WebhookId
} catch {
    Write-Host ("Exception occured when calling Send-TestData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 

### Return type

[**WebhookTestResult**](WebhookTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-Webhook"></a>
# **Update-Webhook**
> WebhookDto Update-Webhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWebhookOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformerId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideAuth] <System.Nullable[Boolean]><br>

Update a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 
$CreateWebhookOptions =  # CreateWebhookOptions | 
$InboxId = "InboxId_example" # String |  (optional)
$AiTransformerId = "AiTransformerId_example" # String |  (optional)
$PhoneNumberId = "PhoneNumberId_example" # String |  (optional)
$OverrideAuth = true # Boolean |  (optional)

# Update a webhook
try {
     $Result = Update-Webhook -WebhookId $WebhookId -CreateWebhookOptions $CreateWebhookOptions -InboxId $InboxId -AiTransformerId $AiTransformerId -PhoneNumberId $PhoneNumberId -OverrideAuth $OverrideAuth
} catch {
    Write-Host ("Exception occured when calling Update-Webhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 
 **CreateWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 
 **InboxId** | [**String**](String)|  | [optional] 
 **AiTransformerId** | [**String**](String)|  | [optional] 
 **PhoneNumberId** | [**String**](String)|  | [optional] 
 **OverrideAuth** | **Boolean**|  | [optional] 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-WebhookHeaders"></a>
# **Update-WebhookHeaders**
> WebhookDto Update-WebhookHeaders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookHeaders] <PSCustomObject><br>

Update a webhook request headers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | 
$WebhookHeaders =  # WebhookHeaders | 

# Update a webhook request headers
try {
     $Result = Update-WebhookHeaders -WebhookId $WebhookId -WebhookHeaders $WebhookHeaders
} catch {
    Write-Host ("Exception occured when calling Update-WebhookHeaders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)|  | 
 **WebhookHeaders** | [**WebhookHeaders**](WebhookHeaders)|  | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-WebhookSignature"></a>
# **Test-WebhookSignature**
> VerifyWebhookSignatureResults Test-WebhookSignature<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VerifyWebhookSignatureOptions] <PSCustomObject><br>

Verify a webhook payload signature

Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$VerifyWebhookSignatureOptions = (Initialize-VerifyWebhookSignatureOptions -MessageId "MessageId_example" -Signature "Signature_example") # VerifyWebhookSignatureOptions | 

# Verify a webhook payload signature
try {
     $Result = Test-WebhookSignature -VerifyWebhookSignatureOptions $VerifyWebhookSignatureOptions
} catch {
    Write-Host ("Exception occured when calling Test-WebhookSignature: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VerifyWebhookSignatureOptions** | [**VerifyWebhookSignatureOptions**](VerifyWebhookSignatureOptions)|  | 

### Return type

[**VerifyWebhookSignatureResults**](VerifyWebhookSignatureResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForWebhookResults"></a>
# **Wait-ForWebhookResults**
> WebhookResultDto[] Wait-ForWebhookResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedCount] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <Int32><br>

Wait for webhook results for a webhook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | ID of webhook to get results for
$ExpectedCount = 987 # Int32 | Expected result count
$Timeout = 987 # Int32 | Max time to wait in milliseconds

# Wait for webhook results for a webhook
try {
     $Result = Wait-ForWebhookResults -WebhookId $WebhookId -ExpectedCount $ExpectedCount -Timeout $Timeout
} catch {
    Write-Host ("Exception occured when calling Wait-ForWebhookResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)| ID of webhook to get results for | 
 **ExpectedCount** | **Int32**| Expected result count | 
 **Timeout** | **Int32**| Max time to wait in milliseconds | 

### Return type

[**WebhookResultDto[]**](WebhookResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

