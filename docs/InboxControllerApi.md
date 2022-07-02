# maislurp-client-powershell.maislurp-client-powershell/Api.InboxControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Inbox**](InboxControllerApi#New-Inbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**New-InboxRuleset**](InboxControllerApi#New-InboxRuleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**New-InboxWithDefaults**](InboxControllerApi#New-InboxWithDefaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**New-InboxWithOptions**](InboxControllerApi#New-InboxWithOptions) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**Invoke-DeleteAllInboxEmails**](InboxControllerApi#Invoke-DeleteAllInboxEmails) | **DELETE** /inboxes/{inboxId}/deleteAllInboxEmails | Delete all emails in a given inboxes.
[**Invoke-DeleteAllInboxes**](InboxControllerApi#Invoke-DeleteAllInboxes) | **DELETE** /inboxes | Delete all inboxes
[**Invoke-DeleteInbox**](InboxControllerApi#Invoke-DeleteInbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**Invoke-DoesInboxExist**](InboxControllerApi#Invoke-DoesInboxExist) | **GET** /inboxes/exists | Does inbox exist
[**Clear-Expired**](InboxControllerApi#Clear-Expired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**Get-AllInboxes**](InboxControllerApi#Get-AllInboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**Get-Emails**](InboxControllerApi#Get-Emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**Get-ImapSmtpAccess**](InboxControllerApi#Get-ImapSmtpAccess) | **GET** /inboxes/imap-smtp-access | 
[**Get-Inbox**](InboxControllerApi#Get-Inbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**Get-InboxByEmailAddress**](InboxControllerApi#Get-InboxByEmailAddress) | **GET** /inboxes/byEmailAddress | Search for an inbox with the provided email address
[**Get-InboxByName**](InboxControllerApi#Get-InboxByName) | **GET** /inboxes/byName | Search for an inbox with the given name
[**Get-InboxCount**](InboxControllerApi#Get-InboxCount) | **GET** /inboxes/count | Get total inbox count
[**Get-InboxEmailCount**](InboxControllerApi#Get-InboxEmailCount) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**Get-InboxEmailsPaginated**](InboxControllerApi#Get-InboxEmailsPaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**Get-InboxIds**](InboxControllerApi#Get-InboxIds) | **GET** /inboxes/ids | Get all inbox IDs
[**Get-InboxSentEmails**](InboxControllerApi#Get-InboxSentEmails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**Get-InboxTags**](InboxControllerApi#Get-InboxTags) | **GET** /inboxes/tags | Get inbox tags
[**Get-Inboxes**](InboxControllerApi#Get-Inboxes) | **GET** /inboxes | List Inboxes and email addresses
[**Get-LatestEmailInInbox**](InboxControllerApi#Get-LatestEmailInInbox) | **GET** /inboxes/getLatestEmail | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**Get-OrganizationInboxes**](InboxControllerApi#Get-OrganizationInboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**Invoke-ListInboxRulesets**](InboxControllerApi#Invoke-ListInboxRulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**Invoke-ListInboxTrackingPixels**](InboxControllerApi#Invoke-ListInboxTrackingPixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**Send-Email**](InboxControllerApi#Send-Email) | **POST** /inboxes/{inboxId} | Send Email
[**Send-EmailAndConfirm**](InboxControllerApi#Send-EmailAndConfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**Send-EmailWithQueue**](InboxControllerApi#Send-EmailWithQueue) | **POST** /inboxes/{inboxId}/with-queue | Send email with queue
[**Send-SmtpEnvelope**](InboxControllerApi#Send-SmtpEnvelope) | **POST** /inboxes/{inboxId}/smtp-envelope | Send email using an SMTP mail envelope and message body and return sent confirmation
[**Send-TestEmail**](InboxControllerApi#Send-TestEmail) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**Set-InboxFavourited**](InboxControllerApi#Set-InboxFavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**Update-Inbox**](InboxControllerApi#Update-Inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.


<a name="New-Inbox"></a>
# **New-Inbox**
> InboxDto New-Inbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseDomainPool] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresAt] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresIn] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowTeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VirtualInbox] <System.Nullable[Boolean]><br>

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. (optional)
$Tags = @("Inner_example") # String[] | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. (optional)
$Name = "Name_example" # String | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. (optional)
$Description = "Description_example" # String | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with (optional)
$UseDomainPool = true # Boolean | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types. (optional)
$Favourite = true # Boolean | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering (optional)
$ExpiresAt = Get-Date # System.DateTime | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX. (optional)
$ExpiresIn = 987 # Int64 | Number of milliseconds that inbox should exist for (optional)
$AllowTeamAccess = true # Boolean | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. (optional)
$InboxType = "HTTP_INBOX" # String | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`. (optional)
$VirtualInbox = true # Boolean | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. (optional)

# Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
try {
     $Result = New-Inbox -EmailAddress $EmailAddress -Tags $Tags -Name $Name -Description $Description -UseDomainPool $UseDomainPool -Favourite $Favourite -ExpiresAt $ExpiresAt -ExpiresIn $ExpiresIn -AllowTeamAccess $AllowTeamAccess -InboxType $InboxType -VirtualInbox $VirtualInbox
} catch {
    Write-Host ("Exception occured when calling New-Inbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**| A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
 **Tags** | [**String[]**](String)| Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
 **Name** | **String**| Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. | [optional] 
 **Description** | **String**| Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] 
 **UseDomainPool** | **Boolean**| Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. | [optional] 
 **Favourite** | **Boolean**| Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 
 **ExpiresAt** | **System.DateTime**| Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] 
 **ExpiresIn** | **Int64**| Number of milliseconds that inbox should exist for | [optional] 
 **AllowTeamAccess** | **Boolean**| DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. | [optional] 
 **InboxType** | **String**| HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mx.mailslurp.com&#x60;. | [optional] 
 **VirtualInbox** | **Boolean**| Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. | [optional] 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-InboxRuleset"></a>
# **New-InboxRuleset**
> InboxRulesetDto New-InboxRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxRulesetOptions] <PSCustomObject><br>

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | inboxId
$CreateInboxRulesetOptions = (Initialize-CreateInboxRulesetOptions -Scope "RECEIVING_EMAILS" -Action "BLOCK" -Target "Target_example") # CreateInboxRulesetOptions | 

# Create an inbox ruleset
try {
     $Result = New-InboxRuleset -InboxId $InboxId -CreateInboxRulesetOptions $CreateInboxRulesetOptions
} catch {
    Write-Host ("Exception occured when calling New-InboxRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| inboxId | 
 **CreateInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-InboxWithDefaults"></a>
# **New-InboxWithDefaults**
> InboxDto New-InboxWithDefaults<br>

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Create an inbox with default options. Uses MailSlurp domain pool address and is private.
try {
     $Result = New-InboxWithDefaults
} catch {
    Write-Host ("Exception occured when calling New-InboxWithDefaults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-InboxWithOptions"></a>
# **New-InboxWithOptions**
> InboxDto New-InboxWithOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxDto] <PSCustomObject><br>

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxDto = (Initialize-CreateInboxDto -EmailAddress "EmailAddress_example" -Name "Name_example" -Description "Description_example" -UseDomainPool $false -Tags @("Tags_example") -ExpiresAt Get-Date -Favourite $false -ExpiresIn 123 -AllowTeamAccess $false -InboxType "HTTP_INBOX" -VirtualInbox $false) # CreateInboxDto | 

# Create an inbox with options. Extended options for inbox creation.
try {
     $Result = New-InboxWithOptions -CreateInboxDto $CreateInboxDto
} catch {
    Write-Host ("Exception occured when calling New-InboxWithOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxDto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllInboxEmails"></a>
# **Invoke-DeleteAllInboxEmails**
> void Invoke-DeleteAllInboxEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete all emails in a given inboxes.

Deletes all emails in an inbox. Be careful as emails cannot be recovered

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 

# Delete all emails in a given inboxes.
try {
     $Result = Invoke-DeleteAllInboxEmails -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllInboxEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllInboxes"></a>
# **Invoke-DeleteAllInboxes**
> void Invoke-DeleteAllInboxes<br>

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all inboxes
try {
     $Result = Invoke-DeleteAllInboxes
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllInboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteInbox"></a>
# **Invoke-DeleteInbox**
> void Invoke-DeleteInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 

# Delete inbox
try {
     $Result = Invoke-DeleteInbox -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DoesInboxExist"></a>
# **Invoke-DoesInboxExist**
> InboxExistsDto Invoke-DoesInboxExist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | Email address

# Does inbox exist
try {
     $Result = Invoke-DoesInboxExist -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Invoke-DoesInboxExist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**| Email address | 

### Return type

[**InboxExistsDto**](InboxExistsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Clear-Expired"></a>
# **Clear-Expired**
> FlushExpiredInboxesResult Clear-Expired<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Before = Get-Date # System.DateTime | Optional expired at before flag to flush expired inboxes that have expired before the given time (optional)

# Remove expired inboxes
try {
     $Result = Clear-Expired -Before $Before
} catch {
    Write-Host ("Exception occured when calling Clear-Expired: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Before** | **System.DateTime**| Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllInboxes"></a>
# **Get-AllInboxes**
> PageInboxProjection Get-AllInboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tag] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

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
$Favourite = true # Boolean | Optionally filter results for favourites only (optional) (default to $false)
$Search = "Search_example" # String | Optionally filter by search words partial matching ID, tags, name, and email address (optional)
$Tag = "Tag_example" # String | Optionally filter by tags. Will return inboxes that include given tags (optional)
$TeamAccess = true # Boolean | DEPRECATED. Optionally filter by team access. (optional)
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# List All Inboxes Paginated
try {
     $Result = Get-AllInboxes -Page $Page -Size $Size -Sort $Sort -Favourite $Favourite -Search $Search -Tag $Tag -TeamAccess $TeamAccess -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-AllInboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to $false]
 **Search** | **String**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **Tag** | **String**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **TeamAccess** | **Boolean**| DEPRECATED. Optionally filter by team access. | [optional] 
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Emails"></a>
# **Get-Emails**
> EmailPreview[] Get-Emails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetryTimeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DelayTimeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinCount] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of inbox that emails belongs to
$Size = 987 # Int32 | Alias for limit. Assessed first before assessing any passed limit. (optional)
$Limit = 987 # Int32 | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller (optional)
$Sort = "ASC" # String | Sort the results by received date and direction ASC or DESC (optional)
$RetryTimeout = 987 # Int64 | Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
$DelayTimeout = 987 # Int64 |  (optional)
$MinCount = 987 # Int64 | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
$UnreadOnly = true # Boolean |  (optional)
$Before = Get-Date # System.DateTime | Exclude emails received after this ISO 8601 date time (optional)
$Since = Get-Date # System.DateTime | Exclude emails received before this ISO 8601 date time (optional)

# Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
try {
     $Result = Get-Emails -InboxId $InboxId -Size $Size -Limit $Limit -Sort $Sort -RetryTimeout $RetryTimeout -DelayTimeout $DelayTimeout -MinCount $MinCount -UnreadOnly $UnreadOnly -Before $Before -Since $Since
} catch {
    Write-Host ("Exception occured when calling Get-Emails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of inbox that emails belongs to | 
 **Size** | **Int32**| Alias for limit. Assessed first before assessing any passed limit. | [optional] 
 **Limit** | **Int32**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **Sort** | **String**| Sort the results by received date and direction ASC or DESC | [optional] 
 **RetryTimeout** | **Int64**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **DelayTimeout** | **Int64**|  | [optional] 
 **MinCount** | **Int64**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **UnreadOnly** | **Boolean**|  | [optional] 
 **Before** | **System.DateTime**| Exclude emails received after this ISO 8601 date time | [optional] 
 **Since** | **System.DateTime**| Exclude emails received before this ISO 8601 date time | [optional] 

### Return type

[**EmailPreview[]**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ImapSmtpAccess"></a>
# **Get-ImapSmtpAccess**
> ImapSmtpAccessDetails Get-ImapSmtpAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Get IMAP and SMTP access usernames and passwords

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Inbox ID (optional)

try {
     $Result = Get-ImapSmtpAccess -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-ImapSmtpAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Inbox ID | [optional] 

### Return type

[**ImapSmtpAccessDetails**](ImapSmtpAccessDetails) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Inbox"></a>
# **Get-Inbox**
> InboxDto Get-Inbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 

# Get Inbox. Returns properties of an inbox.
try {
     $Result = Get-Inbox -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-Inbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxByEmailAddress"></a>
# **Get-InboxByEmailAddress**
> InboxByEmailAddressResult Get-InboxByEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Search for an inbox with the provided email address

Get a inbox result by email address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | 

# Search for an inbox with the provided email address
try {
     $Result = Get-InboxByEmailAddress -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Get-InboxByEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**|  | 

### Return type

[**InboxByEmailAddressResult**](InboxByEmailAddressResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxByName"></a>
# **Get-InboxByName**
> InboxByNameResult Get-InboxByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Search for an inbox with the given name

Get a inbox result by name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | 

# Search for an inbox with the given name
try {
     $Result = Get-InboxByName -Name $Name
} catch {
    Write-Host ("Exception occured when calling Get-InboxByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 

### Return type

[**InboxByNameResult**](InboxByNameResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxCount"></a>
# **Get-InboxCount**
> CountDto Get-InboxCount<br>

Get total inbox count

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get total inbox count
try {
     $Result = Get-InboxCount
} catch {
    Write-Host ("Exception occured when calling Get-InboxCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxEmailCount"></a>
# **Get-InboxEmailCount**
> CountDto Get-InboxEmailCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get email count in inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of inbox that emails belongs to

# Get email count in inbox
try {
     $Result = Get-InboxEmailCount -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-InboxEmailCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of inbox that emails belongs to | 

### Return type

[**CountDto**](CountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxEmailsPaginated"></a>
# **Get-InboxEmailsPaginated**
> PageEmailPreview Get-InboxEmailsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of inbox that emails belongs to
$Page = 987 # Int32 | Optional page index in inbox emails list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox emails list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by received before given date time (optional)

# Get inbox emails paginated
try {
     $Result = Get-InboxEmailsPaginated -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxEmailsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of inbox that emails belongs to | 
 **Page** | **Int32**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxIds"></a>
# **Get-InboxIds**
> InboxIdsResult Get-InboxIds<br>

Get all inbox IDs

Get list of inbox IDs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get all inbox IDs
try {
     $Result = Get-InboxIds
} catch {
    Write-Host ("Exception occured when calling Get-InboxIds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxIdsResult**](InboxIdsResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxSentEmails"></a>
# **Get-InboxSentEmails**
> PageSentEmailProjection Get-InboxSentEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in inbox sent email list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox sent email list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional sent email search (optional)
$Since = Get-Date # System.DateTime | Optional filter by sent after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by sent before given date time (optional)

# Get Inbox Sent Emails
try {
     $Result = Get-InboxSentEmails -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxSentEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional sent email search | [optional] 
 **Since** | **System.DateTime**| Optional filter by sent after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxTags"></a>
# **Get-InboxTags**
> String[] Get-InboxTags<br>

Get inbox tags

Get all inbox tags

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get inbox tags
try {
     $Result = Get-InboxTags
} catch {
    Write-Host ("Exception occured when calling Get-InboxTags: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Inboxes"></a>
# **Get-Inboxes**
> InboxDto[] Get-Inboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Size = 987 # Int32 | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries. (optional) (default to 100)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# List Inboxes and email addresses
try {
     $Result = Get-Inboxes -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-Inboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Int32**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**InboxDto[]**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-LatestEmailInInbox"></a>
# **Get-LatestEmailInInbox**
> Email Get-LatestEmailInInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeoutMillis] <Int64><br>

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in an inbox or wait for one to arrive

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to get the latest email from
$TimeoutMillis = 987 # Int64 | Timeout milliseconds to wait for latest email

# Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
try {
     $Result = Get-LatestEmailInInbox -InboxId $InboxId -TimeoutMillis $TimeoutMillis
} catch {
    Write-Host ("Exception occured when calling Get-LatestEmailInInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to get the latest email from | 
 **TimeoutMillis** | **Int64**| Timeout milliseconds to wait for latest email | 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-OrganizationInboxes"></a>
# **Get-OrganizationInboxes**
> PageOrganizationInboxProjection Get-OrganizationInboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

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
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# List Organization Inboxes Paginated
try {
     $Result = Get-OrganizationInboxes -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-OrganizationInboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ListInboxRulesets"></a>
# **Invoke-ListInboxRulesets**
> PageInboxRulesetDto Invoke-ListInboxRulesets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List inbox rulesets

List all rulesets attached to an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in inbox ruleset list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox ruleset list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# List inbox rulesets
try {
     $Result = Invoke-ListInboxRulesets -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Invoke-ListInboxRulesets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ListInboxTrackingPixels"></a>
# **Invoke-ListInboxTrackingPixels**
> PageTrackingPixelProjection Invoke-ListInboxTrackingPixels<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox tracking pixel list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# List inbox tracking pixels
try {
     $Result = Invoke-ListInboxTrackingPixels -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Invoke-ListInboxTrackingPixels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-Email"></a>
# **Send-Email**
> void Send-Email<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID") # SendEmailOptions | 

# Send Email
try {
     $Result = Send-Email -InboxId $InboxId -SendEmailOptions $SendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Send-Email: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-EmailAndConfirm"></a>
# **Send-EmailAndConfirm**
> SentEmailDto Send-EmailAndConfirm<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID") # SendEmailOptions | 

# Send email and return sent confirmation
try {
     $Result = Send-EmailAndConfirm -InboxId $InboxId -SendEmailOptions $SendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Send-EmailAndConfirm: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-EmailWithQueue"></a>
# **Send-EmailWithQueue**
> void Send-EmailWithQueue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidateBeforeEnqueue] <Boolean><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>

Send email with queue

Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$ValidateBeforeEnqueue = true # Boolean | Validate before adding to queue
$SendEmailOptions =  # SendEmailOptions | 

# Send email with queue
try {
     $Result = Send-EmailWithQueue -InboxId $InboxId -ValidateBeforeEnqueue $ValidateBeforeEnqueue -SendEmailOptions $SendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Send-EmailWithQueue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **ValidateBeforeEnqueue** | **Boolean**| Validate before adding to queue | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-SmtpEnvelope"></a>
# **Send-SmtpEnvelope**
> SentEmailDto Send-SmtpEnvelope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendSMTPEnvelopeOptions] <PSCustomObject><br>

Send email using an SMTP mail envelope and message body and return sent confirmation

Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$SendSMTPEnvelopeOptions = (Initialize-SendSMTPEnvelopeOptions -RcptTo @("RcptTo_example") -MailFrom "MailFrom_example" -VarData "VarData_example") # SendSMTPEnvelopeOptions | 

# Send email using an SMTP mail envelope and message body and return sent confirmation
try {
     $Result = Send-SmtpEnvelope -InboxId $InboxId -SendSMTPEnvelopeOptions $SendSMTPEnvelopeOptions
} catch {
    Write-Host ("Exception occured when calling Send-SmtpEnvelope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **SendSMTPEnvelopeOptions** | [**SendSMTPEnvelopeOptions**](SendSMTPEnvelopeOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-TestEmail"></a>
# **Send-TestEmail**
> void Send-TestEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 

# Send a test email to inbox
try {
     $Result = Send-TestEmail -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Send-TestEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Set-InboxFavourited"></a>
# **Set-InboxFavourited**
> InboxDto Set-InboxFavourited<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetInboxFavouritedOptions] <PSCustomObject><br>

Set inbox favourited state

Set and return new favourite state for an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox to set favourite state
$SetInboxFavouritedOptions = (Initialize-SetInboxFavouritedOptions -State $false) # SetInboxFavouritedOptions | 

# Set inbox favourited state
try {
     $Result = Set-InboxFavourited -InboxId $InboxId -SetInboxFavouritedOptions $SetInboxFavouritedOptions
} catch {
    Write-Host ("Exception occured when calling Set-InboxFavourited: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox to set favourite state | 
 **SetInboxFavouritedOptions** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-Inbox"></a>
# **Update-Inbox**
> InboxDto Update-Inbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateInboxOptions] <PSCustomObject><br>

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$UpdateInboxOptions = (Initialize-UpdateInboxOptions -Name "Name_example" -Description "Description_example" -Tags @("Tags_example") -ExpiresAt Get-Date -Favourite $false) # UpdateInboxOptions | 

# Update Inbox. Change name and description. Email address is not editable.
try {
     $Result = Update-Inbox -InboxId $InboxId -UpdateInboxOptions $UpdateInboxOptions
} catch {
    Write-Host ("Exception occured when calling Update-Inbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **UpdateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

