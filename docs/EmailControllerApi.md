# maislurp-client-powershell.maislurp-client-powershell/Api.EmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ApplyImapFlagOperation**](EmailControllerApi#Invoke-ApplyImapFlagOperation) | **POST** /emails/{emailId}/imap-flag-operation | Set IMAP flags associated with a message. Only supports &#39;\Seen&#39; flag.
[**Invoke-CanSend**](EmailControllerApi#Invoke-CanSend) | **POST** /emails/can-send | Check whether an email send would be accepted
[**Invoke-CheckEmailBody**](EmailControllerApi#Invoke-CheckEmailBody) | **POST** /emails/{emailId}/check-email-body | Check email body for broken links, images, and spelling issues
[**Invoke-CheckEmailBodyFeatureSupport**](EmailControllerApi#Invoke-CheckEmailBodyFeatureSupport) | **POST** /emails/{emailId}/check-email-body-feature-support | Check client support for features used in a stored email body
[**Invoke-CheckEmailClientSupport**](EmailControllerApi#Invoke-CheckEmailClientSupport) | **POST** /emails/check-email-client-support | Check email-client support for a provided HTML body
[**Invoke-DeleteAllEmails**](EmailControllerApi#Invoke-DeleteAllEmails) | **DELETE** /emails | Delete all emails in all inboxes.
[**Invoke-DeleteEmail**](EmailControllerApi#Invoke-DeleteEmail) | **DELETE** /emails/{emailId} | Delete an email
[**Invoke-DownloadAttachment**](EmailControllerApi#Invoke-DownloadAttachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**Invoke-DownloadAttachmentBase64**](EmailControllerApi#Invoke-DownloadAttachmentBase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**Invoke-DownloadBody**](EmailControllerApi#Invoke-DownloadBody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**Invoke-DownloadBodyBytes**](EmailControllerApi#Invoke-DownloadBodyBytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**Invoke-ForwardEmail**](EmailControllerApi#Invoke-ForwardEmail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**Get-AttachmentMetaData**](EmailControllerApi#Get-AttachmentMetaData) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**Get-Email**](EmailControllerApi#Get-Email) | **GET** /emails/{emailId} | Get hydrated email (headers and body)
[**Get-EmailAttachments**](EmailControllerApi#Get-EmailAttachments) | **GET** /emails/{emailId}/attachments | List attachment metadata for an email
[**Get-EmailCodes**](EmailControllerApi#Get-EmailCodes) | **POST** /emails/{emailId}/codes | Extract verification codes from an email
[**Get-EmailContentMatch**](EmailControllerApi#Get-EmailContentMatch) | **POST** /emails/{emailId}/contentMatch | Run regex against hydrated email body and return matches
[**Get-EmailContentPart**](EmailControllerApi#Get-EmailContentPart) | **GET** /emails/{emailId}/contentPart | Get email content part by content type
[**Get-EmailContentPartContent**](EmailControllerApi#Get-EmailContentPartContent) | **GET** /emails/{emailId}/contentPart/raw | Get multipart content part as raw response
[**Get-EmailCount**](EmailControllerApi#Get-EmailCount) | **GET** /emails/emails/count | Get email count
[**Get-EmailHTML**](EmailControllerApi#Get-EmailHTML) | **GET** /emails/{emailId}/html | Get hydrated email HTML for browser rendering
[**Get-EmailHTMLJson**](EmailControllerApi#Get-EmailHTMLJson) | **GET** /emails/{emailId}/html/json | Get hydrated email HTML wrapped in JSON
[**Get-EmailHTMLQuery**](EmailControllerApi#Get-EmailHTMLQuery) | **GET** /emails/{emailId}/htmlQuery | Query hydrated HTML body and return matching text lines
[**Get-EmailLinks**](EmailControllerApi#Get-EmailLinks) | **GET** /emails/{emailId}/links | Extract links from an email HTML body
[**Get-EmailPreviewURLs**](EmailControllerApi#Get-EmailPreviewURLs) | **GET** /emails/{emailId}/urls | Get email URLs for viewing in browser or downloading
[**Get-EmailScreenshotAsBase64**](EmailControllerApi#Get-EmailScreenshotAsBase64) | **POST** /emails/{emailId}/screenshot/base64 | Take a screenshot of an email in a browser and return base64 encoded string
[**Get-EmailScreenshotAsBinary**](EmailControllerApi#Get-EmailScreenshotAsBinary) | **POST** /emails/{emailId}/screenshot/binary | Take a screenshot of an email in a browser
[**Get-EmailSignature**](EmailControllerApi#Get-EmailSignature) | **GET** /emails/{emailId}/signature | Extract signature from an inbound email
[**Get-EmailSummary**](EmailControllerApi#Get-EmailSummary) | **GET** /emails/{emailId}/summary | Get email summary (headers/metadata only)
[**Get-EmailTextLines**](EmailControllerApi#Get-EmailTextLines) | **GET** /emails/{emailId}/textLines | Extract normalized text lines from email body
[**Get-EmailThread**](EmailControllerApi#Get-EmailThread) | **GET** /emails/threads/{threadId} | Get email thread metadata by thread ID
[**Get-EmailThreadItems**](EmailControllerApi#Get-EmailThreadItems) | **GET** /emails/threads/{threadId}/items | Get messages in a specific email thread
[**Get-EmailThreads**](EmailControllerApi#Get-EmailThreads) | **GET** /emails/threads | List email threads in paginated form
[**Get-EmailsOffsetPaginated**](EmailControllerApi#Get-EmailsOffsetPaginated) | **GET** /emails/offset-paginated | Get all emails in all inboxes in paginated form. Email API list all.
[**Get-EmailsPaginated**](EmailControllerApi#Get-EmailsPaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**Get-GravatarUrlForEmailAddress**](EmailControllerApi#Get-GravatarUrlForEmailAddress) | **GET** /emails/gravatarFor | Get Gravatar URL for an email address
[**Get-LatestEmail**](EmailControllerApi#Get-LatestEmail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**Get-LatestEmailInInbox1**](EmailControllerApi#Get-LatestEmailInInbox1) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**Get-OrganizationEmailsPaginated**](EmailControllerApi#Get-OrganizationEmailsPaginated) | **GET** /emails/organization | List organization-visible emails
[**Get-RawEmailContents**](EmailControllerApi#Get-RawEmailContents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**Get-RawEmailJson**](EmailControllerApi#Get-RawEmailJson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**Get-UnreadEmailCount**](EmailControllerApi#Get-UnreadEmailCount) | **GET** /emails/unreadCount | Get unread email count
[**Invoke-MarkAllAsRead**](EmailControllerApi#Invoke-MarkAllAsRead) | **PATCH** /emails/read | Mark all emails as read or unread
[**Invoke-MarkAsRead**](EmailControllerApi#Invoke-MarkAsRead) | **PATCH** /emails/{emailId}/read | Mark an email as read or unread
[**Invoke-ReplyToEmail**](EmailControllerApi#Invoke-ReplyToEmail) | **PUT** /emails/{emailId} | Reply to an email
[**Search-Emails**](EmailControllerApi#Search-Emails) | **POST** /emails/search | Get all emails by search criteria. Return in paginated form.
[**Send-EmailSourceOptional**](EmailControllerApi#Send-EmailSourceOptional) | **POST** /emails | Send email
[**Set-EmailFavourited**](EmailControllerApi#Set-EmailFavourited) | **PUT** /emails/{emailId}/favourite | Set email favourited state
[**Confirm-Email**](EmailControllerApi#Confirm-Email) | **POST** /emails/{emailId}/validate | Validate email HTML contents


<a name="Invoke-ApplyImapFlagOperation"></a>
# **Invoke-ApplyImapFlagOperation**
> EmailPreview Invoke-ApplyImapFlagOperation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ImapFlagOperationOptions] <PSCustomObject><br>

Set IMAP flags associated with a message. Only supports '\Seen' flag.

Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\Seen` flag only.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$ImapFlagOperationOptions = (Initialize-ImapFlagOperationOptions -FlagOperation "SET_FLAGS" -Flags @("Flags_example")) # ImapFlagOperationOptions | 

# Set IMAP flags associated with a message. Only supports '\Seen' flag.
try {
     $Result = Invoke-ApplyImapFlagOperation -EmailId $EmailId -ImapFlagOperationOptions $ImapFlagOperationOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-ApplyImapFlagOperation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **ImapFlagOperationOptions** | [**ImapFlagOperationOptions**](ImapFlagOperationOptions)|  | 

### Return type

[**EmailPreview**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CanSend"></a>
# **Invoke-CanSend**
> CanSendEmailResults Invoke-CanSend<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>

Check whether an email send would be accepted

Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example"))) # SendEmailOptions | 

# Check whether an email send would be accepted
try {
     $Result = Invoke-CanSend -InboxId $InboxId -SendEmailOptions $SendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CanSend: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**CanSendEmailResults**](CanSendEmailResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailBody"></a>
# **Invoke-CheckEmailBody**
> CheckEmailBodyResults Invoke-CheckEmailBody<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Check email body for broken links, images, and spelling issues

Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 

# Check email body for broken links, images, and spelling issues
try {
     $Result = Invoke-CheckEmailBody -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailBody: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 

### Return type

[**CheckEmailBodyResults**](CheckEmailBodyResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailBodyFeatureSupport"></a>
# **Invoke-CheckEmailBodyFeatureSupport**
> CheckEmailBodyFeatureSupportResults Invoke-CheckEmailBodyFeatureSupport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Check client support for features used in a stored email body

Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 

# Check client support for features used in a stored email body
try {
     $Result = Invoke-CheckEmailBodyFeatureSupport -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailBodyFeatureSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 

### Return type

[**CheckEmailBodyFeatureSupportResults**](CheckEmailBodyFeatureSupportResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailClientSupport"></a>
# **Invoke-CheckEmailClientSupport**
> CheckEmailClientSupportResults Invoke-CheckEmailClientSupport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckEmailClientSupportOptions] <PSCustomObject><br>

Check email-client support for a provided HTML body

Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckEmailClientSupportOptions = (Initialize-CheckEmailClientSupportOptions -EmailBody "EmailBody_example") # CheckEmailClientSupportOptions | 

# Check email-client support for a provided HTML body
try {
     $Result = Invoke-CheckEmailClientSupport -CheckEmailClientSupportOptions $CheckEmailClientSupportOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailClientSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckEmailClientSupportOptions** | [**CheckEmailClientSupportOptions**](CheckEmailClientSupportOptions)|  | 

### Return type

[**CheckEmailClientSupportResults**](CheckEmailClientSupportResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllEmails"></a>
# **Invoke-DeleteAllEmails**
> void Invoke-DeleteAllEmails<br>

Delete all emails in all inboxes.

Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all emails in all inboxes.
try {
     $Result = Invoke-DeleteAllEmails
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteEmail"></a>
# **Invoke-DeleteEmail**
> void Invoke-DeleteEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Delete an email

Deletes a single email from account scope. Operation is destructive and not reversible.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to delete

# Delete an email
try {
     $Result = Invoke-DeleteEmail -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to delete | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadAttachment"></a>
# **Invoke-DownloadAttachment**
> SystemByte Invoke-DownloadAttachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiKey] <String><br>

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email
$AttachmentId = "AttachmentId_example" # String | ID of attachment
$ApiKey = "ApiKey_example" # String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)

# Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
try {
     $Result = Invoke-DownloadAttachment -EmailId $EmailId -AttachmentId $AttachmentId -ApiKey $ApiKey
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadAttachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 
 **AttachmentId** | **String**| ID of attachment | 
 **ApiKey** | **String**| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

[**SystemByte**](SystemByte) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadAttachmentBase64"></a>
# **Invoke-DownloadAttachmentBase64**
> DownloadAttachmentDto Invoke-DownloadAttachmentBase64<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email
$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
try {
     $Result = Invoke-DownloadAttachmentBase64 -EmailId $EmailId -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadAttachmentBase64: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 
 **AttachmentId** | **String**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadBody"></a>
# **Invoke-DownloadBody**
> String Invoke-DownloadBody<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get email body as string. Returned as `plain/text` with content type header.

Returns hydrated email body text as a string with content type aligned to the underlying body format.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email

# Get email body as string. Returned as `plain/text` with content type header.
try {
     $Result = Invoke-DownloadBody -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadBody: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadBodyBytes"></a>
# **Invoke-DownloadBodyBytes**
> SystemByte Invoke-DownloadBodyBytes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get email body in bytes. Returned as `octet-stream` with content type header.

Streams hydrated email body bytes with content type derived from the message body format.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email

# Get email body in bytes. Returned as `octet-stream` with content type header.
try {
     $Result = Invoke-DownloadBodyBytes -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadBodyBytes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 

### Return type

[**SystemByte**](SystemByte) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ForwardEmail"></a>
# **Invoke-ForwardEmail**
> SentEmailDto Invoke-ForwardEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForwardEmailOptions] <PSCustomObject><br>

Forward email to recipients

Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email
$ForwardEmailOptions = (Initialize-ForwardEmailOptions -To @("To_example") -Subject "Subject_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -VarFrom "VarFrom_example" -UseInboxName $false -FilterBouncedRecipients $false) # ForwardEmailOptions | 

# Forward email to recipients
try {
     $Result = Invoke-ForwardEmail -EmailId $EmailId -ForwardEmailOptions $ForwardEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-ForwardEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 
 **ForwardEmailOptions** | [**ForwardEmailOptions**](ForwardEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AttachmentMetaData"></a>
# **Get-AttachmentMetaData**
> AttachmentMetaData Get-AttachmentMetaData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

Returns metadata for a specific attachment ID (name, content type, and size fields).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email
$AttachmentId = "AttachmentId_example" # String | ID of attachment

# Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
try {
     $Result = Get-AttachmentMetaData -EmailId $EmailId -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Get-AttachmentMetaData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 
 **AttachmentId** | **String**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Email"></a>
# **Get-Email**
> Email Get-Email<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get hydrated email (headers and body)

Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 

# Get hydrated email (headers and body)
try {
     $Result = Get-Email -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-Email: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailAttachments"></a>
# **Get-EmailAttachments**
> AttachmentMetaData[] Get-EmailAttachments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

List attachment metadata for an email

Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email

# List attachment metadata for an email
try {
     $Result = Get-EmailAttachments -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-EmailAttachments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 

### Return type

[**AttachmentMetaData[]**](AttachmentMetaData) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailCodes"></a>
# **Get-EmailCodes**
> ExtractCodesResult Get-EmailCodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExtractCodesOptions] <PSCustomObject><br>

Extract verification codes from an email

Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to extract codes from
$ExtractCodesOptions = (Initialize-ExtractCodesOptions -Method "AUTO" -AllowFallback $false -MinLength 123 -MaxLength 123 -MaxCandidates 123 -CustomPatterns @("CustomPatterns_example")) # ExtractCodesOptions |  (optional)

# Extract verification codes from an email
try {
     $Result = Get-EmailCodes -EmailId $EmailId -ExtractCodesOptions $ExtractCodesOptions
} catch {
    Write-Host ("Exception occured when calling Get-EmailCodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to extract codes from | 
 **ExtractCodesOptions** | [**ExtractCodesOptions**](ExtractCodesOptions)|  | [optional] 

### Return type

[**ExtractCodesResult**](ExtractCodesResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailContentMatch"></a>
# **Get-EmailContentMatch**
> EmailContentMatchResult Get-EmailContentMatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentMatchOptions] <PSCustomObject><br>

Run regex against hydrated email body and return matches

Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to match against
$ContentMatchOptions = (Initialize-ContentMatchOptions -Pattern "Pattern_example") # ContentMatchOptions | 

# Run regex against hydrated email body and return matches
try {
     $Result = Get-EmailContentMatch -EmailId $EmailId -ContentMatchOptions $ContentMatchOptions
} catch {
    Write-Host ("Exception occured when calling Get-EmailContentMatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to match against | 
 **ContentMatchOptions** | [**ContentMatchOptions**](ContentMatchOptions)|  | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailContentPart"></a>
# **Get-EmailContentPart**
> EmailContentPartResult Get-EmailContentPart<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Index] <System.Nullable[Int32]><br>

Get email content part by content type

Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to match against
$ContentType = "ContentType_example" # String | Content type
$Strict = true # Boolean | Strict content type match (optional)
$Index = 987 # Int32 | Index of content type part if multiple (optional)

# Get email content part by content type
try {
     $Result = Get-EmailContentPart -EmailId $EmailId -ContentType $ContentType -Strict $Strict -Index $Index
} catch {
    Write-Host ("Exception occured when calling Get-EmailContentPart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to match against | 
 **ContentType** | **String**| Content type | 
 **Strict** | **Boolean**| Strict content type match | [optional] 
 **Index** | **Int32**| Index of content type part if multiple | [optional] 

### Return type

[**EmailContentPartResult**](EmailContentPartResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailContentPartContent"></a>
# **Get-EmailContentPartContent**
> String Get-EmailContentPartContent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Index] <System.Nullable[Int32]><br>

Get multipart content part as raw response

Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to match against
$ContentType = "ContentType_example" # String | Content type
$Strict = true # Boolean | Strict content type match (optional)
$Index = 987 # Int32 | Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. (optional)

# Get multipart content part as raw response
try {
     $Result = Get-EmailContentPartContent -EmailId $EmailId -ContentType $ContentType -Strict $Strict -Index $Index
} catch {
    Write-Host ("Exception occured when calling Get-EmailContentPartContent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to match against | 
 **ContentType** | **String**| Content type | 
 **Strict** | **Boolean**| Strict content type match | [optional] 
 **Index** | **Int32**| Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailCount"></a>
# **Get-EmailCount**
> CountDto Get-EmailCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get email count

Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String |  (optional)

# Get email count
try {
     $Result = Get-EmailCount -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-EmailCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | [optional] 

### Return type

[**CountDto**](CountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailHTML"></a>
# **Get-EmailHTML**
> String Get-EmailHTML<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplaceCidImages] <System.Nullable[Boolean]><br>

Get hydrated email HTML for browser rendering

Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$ReplaceCidImages = true # Boolean |  (optional) (default to $false)

# Get hydrated email HTML for browser rendering
try {
     $Result = Get-EmailHTML -EmailId $EmailId -ReplaceCidImages $ReplaceCidImages
} catch {
    Write-Host ("Exception occured when calling Get-EmailHTML: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **ReplaceCidImages** | **Boolean**|  | [optional] [default to $false]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailHTMLJson"></a>
# **Get-EmailHTMLJson**
> EmailHtmlDto Get-EmailHTMLJson<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplaceCidImages] <System.Nullable[Boolean]><br>

Get hydrated email HTML wrapped in JSON

Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$ReplaceCidImages = true # Boolean |  (optional) (default to $false)

# Get hydrated email HTML wrapped in JSON
try {
     $Result = Get-EmailHTMLJson -EmailId $EmailId -ReplaceCidImages $ReplaceCidImages
} catch {
    Write-Host ("Exception occured when calling Get-EmailHTMLJson: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **ReplaceCidImages** | **Boolean**|  | [optional] [default to $false]

### Return type

[**EmailHtmlDto**](EmailHtmlDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailHTMLQuery"></a>
# **Get-EmailHTMLQuery**
> EmailTextLinesResult Get-EmailHTMLQuery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HtmlSelector] <String><br>

Query hydrated HTML body and return matching text lines

Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to perform HTML query on
$HtmlSelector = "HtmlSelector_example" # String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

# Query hydrated HTML body and return matching text lines
try {
     $Result = Get-EmailHTMLQuery -EmailId $EmailId -HtmlSelector $HtmlSelector
} catch {
    Write-Host ("Exception occured when calling Get-EmailHTMLQuery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to perform HTML query on | 
 **HtmlSelector** | **String**| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailLinks"></a>
# **Get-EmailLinks**
> EmailLinksResult Get-EmailLinks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>

Extract links from an email HTML body

Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to fetch text for
$Selector = "Selector_example" # String | Optional HTML query selector for links (optional)

# Extract links from an email HTML body
try {
     $Result = Get-EmailLinks -EmailId $EmailId -Selector $Selector
} catch {
    Write-Host ("Exception occured when calling Get-EmailLinks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to fetch text for | 
 **Selector** | **String**| Optional HTML query selector for links | [optional] 

### Return type

[**EmailLinksResult**](EmailLinksResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailPreviewURLs"></a>
# **Get-EmailPreviewURLs**
> EmailPreviewUrls Get-EmailPreviewURLs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get email URLs for viewing in browser or downloading

Returns precomputed URLs for preview and raw message access for the specified email.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 

# Get email URLs for viewing in browser or downloading
try {
     $Result = Get-EmailPreviewURLs -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-EmailPreviewURLs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailScreenshotAsBase64"></a>
# **Get-EmailScreenshotAsBase64**
> EmailScreenshotResult Get-EmailScreenshotAsBase64<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GetEmailScreenshotOptions] <PSCustomObject><br>

Take a screenshot of an email in a browser and return base64 encoded string

Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$GetEmailScreenshotOptions = (Initialize-GetEmailScreenshotOptions -Height 123 -Width 123) # GetEmailScreenshotOptions | 

# Take a screenshot of an email in a browser and return base64 encoded string
try {
     $Result = Get-EmailScreenshotAsBase64 -EmailId $EmailId -GetEmailScreenshotOptions $GetEmailScreenshotOptions
} catch {
    Write-Host ("Exception occured when calling Get-EmailScreenshotAsBase64: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **GetEmailScreenshotOptions** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions)|  | 

### Return type

[**EmailScreenshotResult**](EmailScreenshotResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailScreenshotAsBinary"></a>
# **Get-EmailScreenshotAsBinary**
> void Get-EmailScreenshotAsBinary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GetEmailScreenshotOptions] <PSCustomObject><br>

Take a screenshot of an email in a browser

Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$GetEmailScreenshotOptions = (Initialize-GetEmailScreenshotOptions -Height 123 -Width 123) # GetEmailScreenshotOptions | 

# Take a screenshot of an email in a browser
try {
     $Result = Get-EmailScreenshotAsBinary -EmailId $EmailId -GetEmailScreenshotOptions $GetEmailScreenshotOptions
} catch {
    Write-Host ("Exception occured when calling Get-EmailScreenshotAsBinary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **GetEmailScreenshotOptions** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailSignature"></a>
# **Get-EmailSignature**
> EmailSignatureParseResult Get-EmailSignature<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Extract signature from an inbound email

Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to extract signature from

# Extract signature from an inbound email
try {
     $Result = Get-EmailSignature -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-EmailSignature: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to extract signature from | 

### Return type

[**EmailSignatureParseResult**](EmailSignatureParseResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailSummary"></a>
# **Get-EmailSummary**
> EmailPreview Get-EmailSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Decode] <System.Nullable[Boolean]><br>

Get email summary (headers/metadata only)

Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$Decode = true # Boolean | Deprecated and ignored. Retained for backwards compatibility. (optional)

# Get email summary (headers/metadata only)
try {
     $Result = Get-EmailSummary -EmailId $EmailId -Decode $Decode
} catch {
    Write-Host ("Exception occured when calling Get-EmailSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **Decode** | **Boolean**| Deprecated and ignored. Retained for backwards compatibility. | [optional] 

### Return type

[**EmailPreview**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailTextLines"></a>
# **Get-EmailTextLines**
> EmailTextLinesResult Get-EmailTextLines<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DecodeHtmlEntities] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LineSeparator] <String><br>

Extract normalized text lines from email body

Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to fetch text for
$DecodeHtmlEntities = true # Boolean | Decode HTML entities (optional)
$LineSeparator = "LineSeparator_example" # String | Line separator character (optional)

# Extract normalized text lines from email body
try {
     $Result = Get-EmailTextLines -EmailId $EmailId -DecodeHtmlEntities $DecodeHtmlEntities -LineSeparator $LineSeparator
} catch {
    Write-Host ("Exception occured when calling Get-EmailTextLines: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to fetch text for | 
 **DecodeHtmlEntities** | **Boolean**| Decode HTML entities | [optional] 
 **LineSeparator** | **String**| Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailThread"></a>
# **Get-EmailThread**
> EmailThreadDto Get-EmailThread<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThreadId] <PSCustomObject><br>

Get email thread metadata by thread ID

Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ThreadId = "ThreadId_example" # String | 

# Get email thread metadata by thread ID
try {
     $Result = Get-EmailThread -ThreadId $ThreadId
} catch {
    Write-Host ("Exception occured when calling Get-EmailThread: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ThreadId** | [**String**](String)|  | 

### Return type

[**EmailThreadDto**](EmailThreadDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailThreadItems"></a>
# **Get-EmailThreadItems**
> EmailThreadItemsDto Get-EmailThreadItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThreadId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get messages in a specific email thread

Returns all messages in a thread ordered by `createdAt` using the requested sort direction.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ThreadId = "ThreadId_example" # String | 
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get messages in a specific email thread
try {
     $Result = Get-EmailThreadItems -ThreadId $ThreadId -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-EmailThreadItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ThreadId** | [**String**](String)|  | 
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**EmailThreadItemsDto**](EmailThreadItemsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailThreads"></a>
# **Get-EmailThreads**
> PageEmailThreadProjection Get-EmailThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HtmlSelector] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List email threads in paginated form

Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$HtmlSelector = "HtmlSelector_example" # String | Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility. (optional)
$Page = 987 # Int32 | Optional page index in email thread pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter search filter for email threads. (optional)
$Since = Get-Date # System.DateTime | Optional filter email threads created since time (optional)
$Before = Get-Date # System.DateTime | Optional filter emails threads created before given date time (optional)

# List email threads in paginated form
try {
     $Result = Get-EmailThreads -HtmlSelector $HtmlSelector -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-EmailThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HtmlSelector** | [**String**](String)| Optional inbox filter. Query parameter name is &#x60;htmlSelector&#x60; for legacy compatibility. | [optional] 
 **Page** | **Int32**| Optional page index in email thread pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter search filter for email threads. | [optional] 
 **Since** | **System.DateTime**| Optional filter email threads created since time | [optional] 
 **Before** | **System.DateTime**| Optional filter emails threads created before given date time | [optional] 

### Return type

[**PageEmailThreadProjection**](PageEmailThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailsOffsetPaginated"></a>
# **Get-EmailsOffsetPaginated**
> PageEmailProjection Get-EmailsOffsetPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourited] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncConnectors] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String[]><br>

Get all emails in all inboxes in paginated form. Email API list all.

Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = @("Inner_example") # String[] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
$Page = 987 # Int32 | Optional page index in email list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$UnreadOnly = true # Boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to $false)
$SearchFilter = "SearchFilter_example" # String | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. (optional)
$Since = Get-Date # System.DateTime | Optional filter emails received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter emails received before given date time (optional)
$Favourited = true # Boolean | Optional filter emails that are favourited (optional)
$SyncConnectors = true # Boolean | Sync connectors (optional)
$PlusAddressId = "PlusAddressId_example" # String | Optional plus address ID filter (optional)
$Include = @("Inner_example") # String[] | Optional list of IDs to include in result (optional)

# Get all emails in all inboxes in paginated form. Email API list all.
try {
     $Result = Get-EmailsOffsetPaginated -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -UnreadOnly $UnreadOnly -SearchFilter $SearchFilter -Since $Since -Before $Before -Favourited $Favourited -SyncConnectors $SyncConnectors -PlusAddressId $PlusAddressId -Include $Include
} catch {
    Write-Host ("Exception occured when calling Get-EmailsOffsetPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String[]**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **Page** | **Int32**| Optional page index in email list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **UnreadOnly** | **Boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to $false]
 **SearchFilter** | **String**| Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. | [optional] 
 **Since** | **System.DateTime**| Optional filter emails received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter emails received before given date time | [optional] 
 **Favourited** | **Boolean**| Optional filter emails that are favourited | [optional] 
 **SyncConnectors** | **Boolean**| Sync connectors | [optional] 
 **PlusAddressId** | [**String**](String)| Optional plus address ID filter | [optional] 
 **Include** | [**String[]**](String)| Optional list of IDs to include in result | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailsPaginated"></a>
# **Get-EmailsPaginated**
> PageEmailProjection Get-EmailsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncConnectors] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourited] <System.Nullable[Boolean]><br>

Get all emails in all inboxes in paginated form. Email API list all.

Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = @("Inner_example") # String[] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
$Page = 987 # Int32 | Optional page index in email list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$UnreadOnly = true # Boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to $false)
$SearchFilter = "SearchFilter_example" # String | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. (optional)
$Since = Get-Date # System.DateTime | Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
$Before = Get-Date # System.DateTime | Optional filter emails received before given date time (optional)
$SyncConnectors = true # Boolean | Sync connectors (optional)
$PlusAddressId = "PlusAddressId_example" # String | Optional plus address ID filter (optional)
$Favourited = true # Boolean | Optional filter emails that are favourited (optional)

# Get all emails in all inboxes in paginated form. Email API list all.
try {
     $Result = Get-EmailsPaginated -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -UnreadOnly $UnreadOnly -SearchFilter $SearchFilter -Since $Since -Before $Before -SyncConnectors $SyncConnectors -PlusAddressId $PlusAddressId -Favourited $Favourited
} catch {
    Write-Host ("Exception occured when calling Get-EmailsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String[]**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **Page** | **Int32**| Optional page index in email list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **UnreadOnly** | **Boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to $false]
 **SearchFilter** | **String**| Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. | [optional] 
 **Since** | **System.DateTime**| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **Before** | **System.DateTime**| Optional filter emails received before given date time | [optional] 
 **SyncConnectors** | **Boolean**| Sync connectors | [optional] 
 **PlusAddressId** | [**String**](String)| Optional plus address ID filter | [optional] 
 **Favourited** | **Boolean**| Optional filter emails that are favourited | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GravatarUrlForEmailAddress"></a>
# **Get-GravatarUrlForEmailAddress**
> GravatarUrl Get-GravatarUrlForEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <String><br>

Get Gravatar URL for an email address

Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | 
$Size = "Size_example" # String |  (optional)

# Get Gravatar URL for an email address
try {
     $Result = Get-GravatarUrlForEmailAddress -EmailAddress $EmailAddress -Size $Size
} catch {
    Write-Host ("Exception occured when calling Get-GravatarUrlForEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**|  | 
 **Size** | **String**|  | [optional] 

### Return type

[**GravatarUrl**](GravatarUrl) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-LatestEmail"></a>
# **Get-LatestEmail**
> Email Get-LatestEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxIds] <String[]><br>

Get latest email in all inboxes. Most recently received.

Returns the most recently received email across all inboxes or an optional subset of inbox IDs.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxIds = @("Inner_example") # String[] | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes (optional)

# Get latest email in all inboxes. Most recently received.
try {
     $Result = Get-LatestEmail -InboxIds $InboxIds
} catch {
    Write-Host ("Exception occured when calling Get-LatestEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxIds** | [**String[]**](String)| Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes | [optional] 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-LatestEmailInInbox1"></a>
# **Get-LatestEmailInInbox1**
> Email Get-LatestEmailInInbox1<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to get the latest email from

# Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
try {
     $Result = Get-LatestEmailInInbox1 -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-LatestEmailInInbox1: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to get the latest email from | 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-OrganizationEmailsPaginated"></a>
# **Get-OrganizationEmailsPaginated**
> PageEmailProjection Get-OrganizationEmailsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncConnectors] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourited] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>

List organization-visible emails

Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = @("Inner_example") # String[] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
$Page = 987 # Int32 | Optional page index in email list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$UnreadOnly = true # Boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to $false)
$SearchFilter = "SearchFilter_example" # String | Optional search filter search filter for emails. (optional)
$Since = Get-Date # System.DateTime | Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
$Before = Get-Date # System.DateTime | Optional filter emails received before given date time (optional)
$SyncConnectors = true # Boolean | Sync connectors (optional)
$Favourited = true # Boolean | Search only favorited emails (optional)
$PlusAddressId = "PlusAddressId_example" # String | Optional plus address ID filter (optional)

# List organization-visible emails
try {
     $Result = Get-OrganizationEmailsPaginated -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -UnreadOnly $UnreadOnly -SearchFilter $SearchFilter -Since $Since -Before $Before -SyncConnectors $SyncConnectors -Favourited $Favourited -PlusAddressId $PlusAddressId
} catch {
    Write-Host ("Exception occured when calling Get-OrganizationEmailsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String[]**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **Page** | **Int32**| Optional page index in email list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **UnreadOnly** | **Boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to $false]
 **SearchFilter** | **String**| Optional search filter search filter for emails. | [optional] 
 **Since** | **System.DateTime**| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **Before** | **System.DateTime**| Optional filter emails received before given date time | [optional] 
 **SyncConnectors** | **Boolean**| Sync connectors | [optional] 
 **Favourited** | **Boolean**| Search only favorited emails | [optional] 
 **PlusAddressId** | [**String**](String)| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-RawEmailContents"></a>
# **Get-RawEmailContents**
> void Get-RawEmailContents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email

# Get raw email string. Returns unparsed raw SMTP message with headers and body.
try {
     $Result = Get-RawEmailContents -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-RawEmailContents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-RawEmailJson"></a>
# **Get-RawEmailJson**
> RawEmailJson Get-RawEmailJson<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email

# Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
try {
     $Result = Get-RawEmailJson -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-RawEmailJson: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-UnreadEmailCount"></a>
# **Get-UnreadEmailCount**
> UnreadCount Get-UnreadEmailCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get unread email count

Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Inbox ID filter for unread count scope (optional)

# Get unread email count
try {
     $Result = Get-UnreadEmailCount -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-UnreadEmailCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Inbox ID filter for unread count scope | [optional] 

### Return type

[**UnreadCount**](UnreadCount) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-MarkAllAsRead"></a>
# **Invoke-MarkAllAsRead**
> void Invoke-MarkAllAsRead<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Read] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Mark all emails as read or unread

Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Read = true # Boolean | What value to assign to email read property. Default true. (optional) (default to $true)
$InboxId = "InboxId_example" # String | Optional inbox ID filter (optional)

# Mark all emails as read or unread
try {
     $Result = Invoke-MarkAllAsRead -Read $Read -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-MarkAllAsRead: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Read** | **Boolean**| What value to assign to email read property. Default true. | [optional] [default to $true]
 **InboxId** | [**String**](String)| Optional inbox ID filter | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-MarkAsRead"></a>
# **Invoke-MarkAsRead**
> EmailPreview Invoke-MarkAsRead<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Read] <System.Nullable[Boolean]><br>

Mark an email as read or unread

Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$Read = true # Boolean | What value to assign to email read property. Default true. (optional) (default to $true)

# Mark an email as read or unread
try {
     $Result = Invoke-MarkAsRead -EmailId $EmailId -Read $Read
} catch {
    Write-Host ("Exception occured when calling Invoke-MarkAsRead: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **Read** | **Boolean**| What value to assign to email read property. Default true. | [optional] [default to $true]

### Return type

[**EmailPreview**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ReplyToEmail"></a>
# **Invoke-ReplyToEmail**
> SentEmailDto Invoke-ReplyToEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplyToEmailOptions] <PSCustomObject><br>

Reply to an email

Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of the email that should be replied to
$ReplyToEmailOptions = (Initialize-ReplyToEmailOptions -Body "Body_example" -IsHTML $false -VarFrom "VarFrom_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -Html $false) # ReplyToEmailOptions | 

# Reply to an email
try {
     $Result = Invoke-ReplyToEmail -EmailId $EmailId -ReplyToEmailOptions $ReplyToEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-ReplyToEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of the email that should be replied to | 
 **ReplyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Search-Emails"></a>
# **Search-Emails**
> PageEmailProjection Search-Emails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchEmailsOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncConnectors] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourited] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>

Get all emails by search criteria. Return in paginated form.

Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SearchEmailsOptions = (Initialize-SearchEmailsOptions -InboxIds @("InboxIds_example") -PageIndex 123 -PageSize 123 -SortDirection "ASC" -UnreadOnly $false -SearchFilter "SearchFilter_example" -Since Get-Date -Before Get-Date) # SearchEmailsOptions | 
$SyncConnectors = true # Boolean | Sync connectors (optional)
$Favourited = true # Boolean | Search only favourited emails (optional)
$PlusAddressId = "PlusAddressId_example" # String | Optional plus address ID filter (optional)

# Get all emails by search criteria. Return in paginated form.
try {
     $Result = Search-Emails -SearchEmailsOptions $SearchEmailsOptions -SyncConnectors $SyncConnectors -Favourited $Favourited -PlusAddressId $PlusAddressId
} catch {
    Write-Host ("Exception occured when calling Search-Emails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SearchEmailsOptions** | [**SearchEmailsOptions**](SearchEmailsOptions)|  | 
 **SyncConnectors** | **Boolean**| Sync connectors | [optional] 
 **Favourited** | **Boolean**| Search only favourited emails | [optional] 
 **PlusAddressId** | [**String**](String)| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-EmailSourceOptional"></a>
# **Send-EmailSourceOptional**
> void Send-EmailSourceOptional<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseDomainPool] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VirtualSend] <System.Nullable[Boolean]><br>

Send email

Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example"))) # SendEmailOptions | 
$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from (optional)
$UseDomainPool = true # Boolean | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. (optional)
$VirtualSend = true # Boolean | Optionally create inbox to send from that is a virtual inbox and won't send to external addresses (optional)

# Send email
try {
     $Result = Send-EmailSourceOptional -SendEmailOptions $SendEmailOptions -InboxId $InboxId -UseDomainPool $UseDomainPool -VirtualSend $VirtualSend
} catch {
    Write-Host ("Exception occured when calling Send-EmailSourceOptional: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | [optional] 
 **UseDomainPool** | **Boolean**| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **VirtualSend** | **Boolean**| Optionally create inbox to send from that is a virtual inbox and won&#39;t send to external addresses | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Set-EmailFavourited"></a>
# **Set-EmailFavourited**
> void Set-EmailFavourited<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourited] <Boolean><br>

Set email favourited state

Sets favourite state for an email for dashboard/search workflows.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to set favourite state
$Favourited = true # Boolean | 

# Set email favourited state
try {
     $Result = Set-EmailFavourited -EmailId $EmailId -Favourited $Favourited
} catch {
    Write-Host ("Exception occured when calling Set-EmailFavourited: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to set favourite state | 
 **Favourited** | **Boolean**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Confirm-Email"></a>
# **Confirm-Email**
> ValidationDto Confirm-Email<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Validate email HTML contents

Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email

# Validate email HTML contents
try {
     $Result = Confirm-Email -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Confirm-Email: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email | 

### Return type

[**ValidationDto**](ValidationDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

