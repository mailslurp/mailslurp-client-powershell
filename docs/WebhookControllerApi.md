# maislurp-client-powershell.maislurp-client-powershell/Api.WebhookControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Webhook**](WebhookControllerApi#New-Webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**Invoke-DeleteWebhook**](WebhookControllerApi#Invoke-DeleteWebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**Get-AllWebhookResults**](WebhookControllerApi#Get-AllWebhookResults) | **GET** /webhooks/results | Get results for all webhooks
[**Get-AllWebhooks**](WebhookControllerApi#Get-AllWebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**Get-InboxWebhooksPaginated**](WebhookControllerApi#Get-InboxWebhooksPaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**Get-JsonSchemaForWebhookPayload**](WebhookControllerApi#Get-JsonSchemaForWebhookPayload) | **POST** /webhooks/{webhookId}/schema | Get JSON Schema definition for webhook payload
[**Get-TestWebhookPayload**](WebhookControllerApi#Get-TestWebhookPayload) | **GET** /webhooks/test | Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
[**Get-TestWebhookPayloadEmailOpened**](WebhookControllerApi#Get-TestWebhookPayloadEmailOpened) | **GET** /webhooks/test/email-opened-payload | Get webhook test payload for email opened event
[**Get-TestWebhookPayloadEmailRead**](WebhookControllerApi#Get-TestWebhookPayloadEmailRead) | **GET** /webhooks/test/email-read-payload | Get webhook test payload for email opened event
[**Get-TestWebhookPayloadForWebhook**](WebhookControllerApi#Get-TestWebhookPayloadForWebhook) | **POST** /webhooks/{webhookId}/example | Get example payload for webhook
[**Get-TestWebhookPayloadNewAttachment**](WebhookControllerApi#Get-TestWebhookPayloadNewAttachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**Get-TestWebhookPayloadNewContact**](WebhookControllerApi#Get-TestWebhookPayloadNewContact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**Get-TestWebhookPayloadNewEmail**](WebhookControllerApi#Get-TestWebhookPayloadNewEmail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**Get-Webhook**](WebhookControllerApi#Get-Webhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**Get-WebhookResult**](WebhookControllerApi#Get-WebhookResult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**Get-WebhookResults**](WebhookControllerApi#Get-WebhookResults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**Get-Webhooks**](WebhookControllerApi#Get-Webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**Invoke-RedriveWebhookResult**](WebhookControllerApi#Invoke-RedriveWebhookResult) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**Send-TestData**](WebhookControllerApi#Send-TestData) | **POST** /webhooks/{webhookId}/test | Send webhook test data


<a name="New-Webhook"></a>
# **New-Webhook**
> WebhookDto New-Webhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookOptions] <PSCustomObject><br>

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

$InboxId = "InboxId_example" # String | inboxId
$WebhookOptions = (Initialize-CreateWebhookOptions -BasicAuth (Initialize-BasicAuthOptions -Username "Username_example" -Password "Password_example") -EventName "EMAIL_RECEIVED" -Name "Name_example" -Url "Url_example") # CreateWebhookOptions | webhookOptions

# Attach a WebHook URL to an inbox
try {
     $Result = New-Webhook -InboxId $InboxId -WebhookOptions $WebhookOptions
} catch {
    Write-Host ("Exception occured when calling New-Webhook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| inboxId | 
 **WebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)| webhookOptions | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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

$InboxId = "InboxId_example" # String | inboxId
$WebhookId = "WebhookId_example" # String | webhookId

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
 **InboxId** | [**String**](String)| inboxId | 
 **WebhookId** | [**String**](String)| webhookId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllWebhookResults"></a>
# **Get-AllWebhookResults**
> PageWebhookResult Get-AllWebhookResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get results for all webhooks

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get results for all webhooks
try {
     $Result = Get-AllWebhookResults -Before $Before -Page $Page -SearchFilter $SearchFilter -Since $Since -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllWebhookResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageWebhookResult**](PageWebhookResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllWebhooks"></a>
# **Get-AllWebhooks**
> PageWebhookProjection Get-AllWebhooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

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

$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")

# List Webhooks Paginated
try {
     $Result = Get-AllWebhooks -Before $Before -Page $Page -SearchFilter $SearchFilter -Since $Since -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllWebhooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]

### Return type

[**PageWebhookProjection**](PageWebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxWebhooksPaginated"></a>
# **Get-InboxWebhooksPaginated**
> PageWebhookProjection Get-InboxWebhooksPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get paginated webhooks for an Inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | inboxId
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get paginated webhooks for an Inbox
try {
     $Result = Get-InboxWebhooksPaginated -InboxId $InboxId -Before $Before -Page $Page -SearchFilter $SearchFilter -Since $Since -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-InboxWebhooksPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| inboxId | 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageWebhookProjection**](PageWebhookProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

$WebhookId = "WebhookId_example" # String | webhookId

# Get JSON Schema definition for webhook payload
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
 **WebhookId** | [**String**](String)| webhookId | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

$EventName = "EMAIL_RECEIVED" # String | eventName (optional)

# Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
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
 **EventName** | **String**| eventName | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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


# Get webhook test payload for email opened event
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
 - **Accept**: application/json

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


# Get webhook test payload for email opened event
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
 - **Accept**: application/json

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

$WebhookId = "WebhookId_example" # String | webhookId

# Get example payload for webhook
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
 **WebhookId** | [**String**](String)| webhookId | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

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
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Webhook"></a>
# **Get-Webhook**
> WebhookDto Get-Webhook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>

Get a webhook for an Inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WebhookId = "WebhookId_example" # String | webhookId

# Get a webhook for an Inbox
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
 **WebhookId** | [**String**](String)| webhookId | 

### Return type

[**WebhookDto**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-WebhookResults"></a>
# **Get-WebhookResults**
> PageWebhookResult Get-WebhookResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WebhookId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

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
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get a webhook results for a webhook
try {
     $Result = Get-WebhookResults -WebhookId $WebhookId -Before $Before -Page $Page -SearchFilter $SearchFilter -Since $Since -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-WebhookResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WebhookId** | [**String**](String)| ID of webhook to get results for | 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageWebhookResult**](PageWebhookResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Webhooks"></a>
# **Get-Webhooks**
> WebhookDto[] Get-Webhooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get all webhooks for an Inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | inboxId

# Get all webhooks for an Inbox
try {
     $Result = Get-Webhooks -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-Webhooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| inboxId | 

### Return type

[**WebhookDto[]**](WebhookDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

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

$WebhookId = "WebhookId_example" # String | webhookId

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
 **WebhookId** | [**String**](String)| webhookId | 

### Return type

[**WebhookTestResult**](WebhookTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

