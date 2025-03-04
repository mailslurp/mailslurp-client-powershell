# maislurp-client-powershell.maislurp-client-powershell/Api.InboxControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-ScheduledJob**](InboxControllerApi#Stop-ScheduledJob) | **DELETE** /inboxes/scheduled-jobs/{jobId} | Cancel a scheduled email job
[**New-Inbox**](InboxControllerApi#New-Inbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**New-InboxRuleset**](InboxControllerApi#New-InboxRuleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**New-InboxWithDefaults**](InboxControllerApi#New-InboxWithDefaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**New-InboxWithOptions**](InboxControllerApi#New-InboxWithOptions) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**Invoke-DeleteAllInboxEmails**](InboxControllerApi#Invoke-DeleteAllInboxEmails) | **DELETE** /inboxes/{inboxId}/deleteAllInboxEmails | Delete all emails in a given inboxes.
[**Invoke-DeleteAllInboxes**](InboxControllerApi#Invoke-DeleteAllInboxes) | **DELETE** /inboxes | Delete all inboxes
[**Invoke-DeleteAllInboxesByDescription**](InboxControllerApi#Invoke-DeleteAllInboxesByDescription) | **DELETE** /inboxes/by-description | Delete inboxes by description
[**Invoke-DeleteAllInboxesByName**](InboxControllerApi#Invoke-DeleteAllInboxesByName) | **DELETE** /inboxes/by-name | Delete inboxes by name
[**Invoke-DeleteAllInboxesByTag**](InboxControllerApi#Invoke-DeleteAllInboxesByTag) | **DELETE** /inboxes/by-tag | Delete inboxes by tag
[**Invoke-DeleteInbox**](InboxControllerApi#Invoke-DeleteInbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**Invoke-DoesInboxExist**](InboxControllerApi#Invoke-DoesInboxExist) | **GET** /inboxes/exists | Does inbox exist
[**Clear-Expired**](InboxControllerApi#Clear-Expired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**Get-AllInboxes**](InboxControllerApi#Get-AllInboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**Get-AllInboxesOffsetPaginated**](InboxControllerApi#Get-AllInboxesOffsetPaginated) | **GET** /inboxes/offset-paginated | List All Inboxes Offset Paginated
[**Get-AllPlusAddresses**](InboxControllerApi#Get-AllPlusAddresses) | **GET** /inboxes/plus-addresses | Get all sub address plus address aliases for an inbox
[**Get-AllScheduledJobs**](InboxControllerApi#Get-AllScheduledJobs) | **GET** /inboxes/scheduled-jobs | Get all scheduled email sending jobs for account
[**Get-DeliveryStatusesByInboxId**](InboxControllerApi#Get-DeliveryStatusesByInboxId) | **GET** /inboxes/{inboxId}/delivery-status | 
[**Get-Emails**](InboxControllerApi#Get-Emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**Get-ImapAccess**](InboxControllerApi#Get-ImapAccess) | **GET** /inboxes/imap-access | 
[**Get-ImapSmtpAccess**](InboxControllerApi#Get-ImapSmtpAccess) | **GET** /inboxes/imap-smtp-access | 
[**Get-ImapSmtpAccessEnv**](InboxControllerApi#Get-ImapSmtpAccessEnv) | **GET** /inboxes/imap-smtp-access/env | 
[**Get-ImapSmtpAccessServers**](InboxControllerApi#Get-ImapSmtpAccessServers) | **GET** /inboxes/imap-smtp-access/servers | 
[**Get-Inbox**](InboxControllerApi#Get-Inbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**Get-InboxByEmailAddress**](InboxControllerApi#Get-InboxByEmailAddress) | **GET** /inboxes/byEmailAddress | Search for an inbox with the provided email address
[**Get-InboxByName**](InboxControllerApi#Get-InboxByName) | **GET** /inboxes/byName | Search for an inbox with the given name
[**Get-InboxCount**](InboxControllerApi#Get-InboxCount) | **GET** /inboxes/count | Get total inbox count
[**Get-InboxEmailCount**](InboxControllerApi#Get-InboxEmailCount) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**Get-InboxEmailsPaginated**](InboxControllerApi#Get-InboxEmailsPaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**Get-InboxIds**](InboxControllerApi#Get-InboxIds) | **GET** /inboxes/ids | Get all inbox IDs
[**Get-InboxPlusAddress**](InboxControllerApi#Get-InboxPlusAddress) | **GET** /inboxes/{inboxId}/plus-addresses/{plusAddressId} | Get sub address plus address for an inbox
[**Get-InboxPlusAddressById**](InboxControllerApi#Get-InboxPlusAddressById) | **GET** /inboxes/plus-addresses/{plusAddressId} | Get sub address plus address by ID
[**Get-InboxPlusAddressEmails**](InboxControllerApi#Get-InboxPlusAddressEmails) | **GET** /inboxes/{inboxId}/plus-addresses/emails | Get emails for a given inbox plus address
[**Get-InboxPlusAddressEmailsForPlusAddressId**](InboxControllerApi#Get-InboxPlusAddressEmailsForPlusAddressId) | **GET** /inboxes/{inboxId}/plus-addresses/{plusAddressId}/emails | Get emails for a given inbox plus address
[**Get-InboxPlusAddresses**](InboxControllerApi#Get-InboxPlusAddresses) | **GET** /inboxes/{inboxId}/plus-addresses | Get sub address plus address aliases for an inbox
[**Get-InboxSentCount**](InboxControllerApi#Get-InboxSentCount) | **GET** /inboxes/{inboxId}/sent/count | Get sent email count in inbox
[**Get-InboxSentEmails**](InboxControllerApi#Get-InboxSentEmails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**Get-InboxTags**](InboxControllerApi#Get-InboxTags) | **GET** /inboxes/tags | Get inbox tags
[**Get-InboxTagsPaginated**](InboxControllerApi#Get-InboxTagsPaginated) | **GET** /inboxes/tags/paginated | Get inbox tags paginated
[**Get-Inboxes**](InboxControllerApi#Get-Inboxes) | **GET** /inboxes | List Inboxes and email addresses
[**Get-InboxesByTag**](InboxControllerApi#Get-InboxesByTag) | **GET** /inboxes/tags/inboxes | Get inboxes for a tag
[**Get-LatestEmailInInbox**](InboxControllerApi#Get-LatestEmailInInbox) | **GET** /inboxes/getLatestEmail | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**Get-OrganizationInboxes**](InboxControllerApi#Get-OrganizationInboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**Get-Outboxes**](InboxControllerApi#Get-Outboxes) | **GET** /inboxes/outboxes | List all inboxes with sent emails
[**Get-ScheduledJob**](InboxControllerApi#Get-ScheduledJob) | **GET** /inboxes/scheduled-jobs/{jobId} | Get a scheduled email job
[**Get-ScheduledJobsByInboxId**](InboxControllerApi#Get-ScheduledJobsByInboxId) | **GET** /inboxes/{inboxId}/scheduled-jobs | Get all scheduled email sending jobs for the inbox
[**Get-SmtpAccess**](InboxControllerApi#Get-SmtpAccess) | **GET** /inboxes/smtp-access | 
[**Invoke-IsEmailAddressAvailable**](InboxControllerApi#Invoke-IsEmailAddressAvailable) | **POST** /inboxes/available | Is email address available
[**Invoke-ListInboxRulesets**](InboxControllerApi#Invoke-ListInboxRulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**Invoke-ListInboxTrackingPixels**](InboxControllerApi#Invoke-ListInboxTrackingPixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**Search-Inboxes**](InboxControllerApi#Search-Inboxes) | **POST** /inboxes/search | Search all inboxes and return matching inboxes
[**Send-Email**](InboxControllerApi#Send-Email) | **POST** /inboxes/{inboxId} | Send Email
[**Send-EmailAndConfirm**](InboxControllerApi#Send-EmailAndConfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**Send-EmailWithQueue**](InboxControllerApi#Send-EmailWithQueue) | **POST** /inboxes/{inboxId}/with-queue | Send email with queue
[**Send-SmtpEnvelope**](InboxControllerApi#Send-SmtpEnvelope) | **POST** /inboxes/{inboxId}/smtp-envelope | Send email using an SMTP mail envelope and message body and return sent confirmation
[**Send-TestEmail**](InboxControllerApi#Send-TestEmail) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**Send-WithSchedule**](InboxControllerApi#Send-WithSchedule) | **POST** /inboxes/{inboxId}/with-schedule | Send email with with delay or schedule
[**Set-InboxFavourited**](InboxControllerApi#Set-InboxFavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**Update-ImapAccess**](InboxControllerApi#Update-ImapAccess) | **PATCH** /inboxes/imap-access | 
[**Update-Inbox**](InboxControllerApi#Update-Inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.
[**Update-SmtpAccess**](InboxControllerApi#Update-SmtpAccess) | **PATCH** /inboxes/smtp-access | 


<a name="Stop-ScheduledJob"></a>
# **Stop-ScheduledJob**
> ScheduledJobDto Stop-ScheduledJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Cancel a scheduled email job

Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$JobId = "JobId_example" # String | 

# Cancel a scheduled email job
try {
     $Result = Stop-ScheduledJob -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Stop-ScheduledJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JobId** | [**String**](String)|  | 

### Return type

[**ScheduledJobDto**](ScheduledJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseShortAddress] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Prefix] <String><br>

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
$InboxType = "HTTP_INBOX" # String | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mxslurp.click`. (optional)
$VirtualInbox = true # Boolean | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. (optional)
$UseShortAddress = true # Boolean | Use a shorter email address under 31 characters (optional)
$DomainId = "DomainId_example" # String | ID of custom domain to use for email address. (optional)
$DomainName = "DomainName_example" # String | FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox. (optional)
$Prefix = "Prefix_example" # String | Prefix to add before the email address for easier labelling or identification. (optional)

# Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
try {
     $Result = New-Inbox -EmailAddress $EmailAddress -Tags $Tags -Name $Name -Description $Description -UseDomainPool $UseDomainPool -Favourite $Favourite -ExpiresAt $ExpiresAt -ExpiresIn $ExpiresIn -AllowTeamAccess $AllowTeamAccess -InboxType $InboxType -VirtualInbox $VirtualInbox -UseShortAddress $UseShortAddress -DomainId $DomainId -DomainName $DomainName -Prefix $Prefix
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
 **InboxType** | **String**| HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mxslurp.click&#x60;. | [optional] 
 **VirtualInbox** | **Boolean**| Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. | [optional] 
 **UseShortAddress** | **Boolean**| Use a shorter email address under 31 characters | [optional] 
 **DomainId** | [**String**](String)| ID of custom domain to use for email address. | [optional] 
 **DomainName** | **String**| FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the &#x60;emailAddress&#x60; option instead to specify the full custom inbox. | [optional] 
 **Prefix** | **String**| Prefix to add before the email address for easier labelling or identification. | [optional] 

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

$CreateInboxDto = (Initialize-CreateInboxDto -EmailAddress "EmailAddress_example" -DomainName "DomainName_example" -DomainId "DomainId_example" -Name "Name_example" -Description "Description_example" -UseDomainPool $false -Tags @("Tags_example") -ExpiresAt Get-Date -Favourite $false -ExpiresIn 123 -AllowTeamAccess $false -InboxType "HTTP_INBOX" -VirtualInbox $false -UseShortAddress $false -Prefix "Prefix_example") # CreateInboxDto | 

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

<a name="Invoke-DeleteAllInboxesByDescription"></a>
# **Invoke-DeleteAllInboxesByDescription**
> void Invoke-DeleteAllInboxesByDescription<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>

Delete inboxes by description

Permanently delete all inboxes by description

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Description = "Description_example" # String | 

# Delete inboxes by description
try {
     $Result = Invoke-DeleteAllInboxesByDescription -Description $Description
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllInboxesByDescription: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Description** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllInboxesByName"></a>
# **Invoke-DeleteAllInboxesByName**
> void Invoke-DeleteAllInboxesByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete inboxes by name

Permanently delete all inboxes by name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | 

# Delete inboxes by name
try {
     $Result = Invoke-DeleteAllInboxesByName -Name $Name
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllInboxesByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllInboxesByTag"></a>
# **Invoke-DeleteAllInboxesByTag**
> void Invoke-DeleteAllInboxesByTag<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tag] <String><br>

Delete inboxes by tag

Permanently delete all inboxes by tag

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Tag = "Tag_example" # String | 

# Delete inboxes by tag
try {
     $Result = Invoke-DeleteAllInboxesByTag -Tag $Tag
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllInboxesByTag: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Tag** | **String**|  | 

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowCatchAll] <System.Nullable[Boolean]><br>

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
$AllowCatchAll = true # Boolean |  (optional)

# Does inbox exist
try {
     $Result = Invoke-DoesInboxExist -EmailAddress $EmailAddress -AllowCatchAll $AllowCatchAll
} catch {
    Write-Host ("Exception occured when calling Invoke-DoesInboxExist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**| Email address | 
 **AllowCatchAll** | **Boolean**|  | [optional] 

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxFunction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <PSCustomObject><br>

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
$InboxType = "HTTP_INBOX" # String | Optional filter by inbox type (optional)
$InboxFunction = "ALIAS" # String | Optional filter by inbox function (optional)
$DomainId = "DomainId_example" # String | Optional domain ID filter (optional)

# List All Inboxes Paginated
try {
     $Result = Get-AllInboxes -Page $Page -Size $Size -Sort $Sort -Favourite $Favourite -Search $Search -Tag $Tag -TeamAccess $TeamAccess -Since $Since -Before $Before -InboxType $InboxType -InboxFunction $InboxFunction -DomainId $DomainId
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
 **InboxType** | **String**| Optional filter by inbox type | [optional] 
 **InboxFunction** | **String**| Optional filter by inbox function | [optional] 
 **DomainId** | [**String**](String)| Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllInboxesOffsetPaginated"></a>
# **Get-AllInboxesOffsetPaginated**
> PageInboxProjection Get-AllInboxesOffsetPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tag] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxFunction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <PSCustomObject><br>

List All Inboxes Offset Paginated

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
$InboxType = "HTTP_INBOX" # String | Optional filter by inbox type (optional)
$InboxFunction = "ALIAS" # String | Optional filter by inbox function (optional)
$DomainId = "DomainId_example" # String | Optional domain ID filter (optional)

# List All Inboxes Offset Paginated
try {
     $Result = Get-AllInboxesOffsetPaginated -Page $Page -Size $Size -Sort $Sort -Favourite $Favourite -Search $Search -Tag $Tag -TeamAccess $TeamAccess -Since $Since -Before $Before -InboxType $InboxType -InboxFunction $InboxFunction -DomainId $DomainId
} catch {
    Write-Host ("Exception occured when calling Get-AllInboxesOffsetPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **InboxType** | **String**| Optional filter by inbox type | [optional] 
 **InboxFunction** | **String**| Optional filter by inbox function | [optional] 
 **DomainId** | [**String**](String)| Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllPlusAddresses"></a>
# **Get-AllPlusAddresses**
> PagePlusAddressProjection Get-AllPlusAddresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get all sub address plus address aliases for an inbox

Returns paginated list of all plus alias addresses found for in account based on received emails that used the inbox address with a +xyz alias.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox tracking pixel list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$InboxId = "InboxId_example" # String | Optional inboxId filter (optional)

# Get all sub address plus address aliases for an inbox
try {
     $Result = Get-AllPlusAddresses -Page $Page -Size $Size -Sort $Sort -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-AllPlusAddresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **InboxId** | [**String**](String)| Optional inboxId filter | [optional] 

### Return type

[**PagePlusAddressProjection**](PagePlusAddressProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllScheduledJobs"></a>
# **Get-AllScheduledJobs**
> PageScheduledJobs Get-AllScheduledJobs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get all scheduled email sending jobs for account

Schedule sending of emails using scheduled jobs. These can be inbox or account level.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in scheduled job list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in scheduled job list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$InboxId = "InboxId_example" # String |  (optional)

# Get all scheduled email sending jobs for account
try {
     $Result = Get-AllScheduledJobs -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-AllScheduledJobs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in scheduled job list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in scheduled job list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **InboxId** | [**String**](String)|  | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliveryStatusesByInboxId"></a>
# **Get-DeliveryStatusesByInboxId**
> PageDeliveryStatus Get-DeliveryStatusesByInboxId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>



Get all email delivery statuses for an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in delivery status list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in delivery status list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

try {
     $Result = Get-DeliveryStatusesByInboxId -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-DeliveryStatusesByInboxId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus) (PSCustomObject)

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

<a name="Get-ImapAccess"></a>
# **Get-ImapAccess**
> ImapAccessDetails Get-ImapAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Get IMAP access usernames and passwords

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
     $Result = Get-ImapAccess -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-ImapAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Inbox ID | [optional] 

### Return type

[**ImapAccessDetails**](ImapAccessDetails) (PSCustomObject)

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

<a name="Get-ImapSmtpAccessEnv"></a>
# **Get-ImapSmtpAccessEnv**
> String Get-ImapSmtpAccessEnv<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Get IMAP and SMTP access details in .env format

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
     $Result = Get-ImapSmtpAccessEnv -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-ImapSmtpAccessEnv: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Inbox ID | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ImapSmtpAccessServers"></a>
# **Get-ImapSmtpAccessServers**
> ImapSmtpAccessServers Get-ImapSmtpAccessServers<br>



Get IMAP and SMTP server hosts

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-ImapSmtpAccessServers
} catch {
    Write-Host ("Exception occured when calling Get-ImapSmtpAccessServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImapSmtpAccessServers**](ImapSmtpAccessServers) (PSCustomObject)

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncConnectors] <System.Nullable[Boolean]><br>

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
$SyncConnectors = true # Boolean | Sync connectors before fetching emails (optional)

# Get inbox emails paginated
try {
     $Result = Get-InboxEmailsPaginated -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -SyncConnectors $SyncConnectors
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
 **SyncConnectors** | **Boolean**| Sync connectors before fetching emails | [optional] 

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

<a name="Get-InboxPlusAddress"></a>
# **Get-InboxPlusAddress**
> PlusAddressDto Get-InboxPlusAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get sub address plus address for an inbox

Returns a plus address object based on emails that used the inbox address with a +xyz alias.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PlusAddressId = "PlusAddressId_example" # String | ID of the plus address you want to fetch
$InboxId = "InboxId_example" # String | ID of the inbox you want to fetch

# Get sub address plus address for an inbox
try {
     $Result = Get-InboxPlusAddress -PlusAddressId $PlusAddressId -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlusAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlusAddressId** | [**String**](String)| ID of the plus address you want to fetch | 
 **InboxId** | [**String**](String)| ID of the inbox you want to fetch | 

### Return type

[**PlusAddressDto**](PlusAddressDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlusAddressById"></a>
# **Get-InboxPlusAddressById**
> PlusAddressDto Get-InboxPlusAddressById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get sub address plus address by ID

Returns a plus address object based on emails that used the inbox address with a +xyz alias.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PlusAddressId = "PlusAddressId_example" # String | ID of the plus address you want to fetch
$InboxId = "InboxId_example" # String | ID of the inbox you want to filter for (optional)

# Get sub address plus address by ID
try {
     $Result = Get-InboxPlusAddressById -PlusAddressId $PlusAddressId -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlusAddressById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlusAddressId** | [**String**](String)| ID of the plus address you want to fetch | 
 **InboxId** | [**String**](String)| ID of the inbox you want to filter for | [optional] 

### Return type

[**PlusAddressDto**](PlusAddressDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlusAddressEmails"></a>
# **Get-InboxPlusAddressEmails**
> PageEmailPreview Get-InboxPlusAddressEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get emails for a given inbox plus address

Returns paginated list of all emails for a given plus alias addresses found for an inbox based on received emails that used the inbox address with a +xyz alias.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PlusAddress = "PlusAddress_example" # String | The plus address to fetch emails for. If your inbox address is `123@test.com` and the email was sent to `123+abc@test.com` then the plus address is `abc`
$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$Page = 987 # Int32 | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox tracking pixel list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# Get emails for a given inbox plus address
try {
     $Result = Get-InboxPlusAddressEmails -PlusAddress $PlusAddress -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlusAddressEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlusAddress** | **String**| The plus address to fetch emails for. If your inbox address is &#x60;123@test.com&#x60; and the email was sent to &#x60;123+abc@test.com&#x60; then the plus address is &#x60;abc&#x60; | 
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **Page** | **Int32**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlusAddressEmailsForPlusAddressId"></a>
# **Get-InboxPlusAddressEmailsForPlusAddressId**
> PageEmailPreview Get-InboxPlusAddressEmailsForPlusAddressId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlusAddressId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get emails for a given inbox plus address

Returns paginated list of all emails for a given plus alias addresses found for an inbox based on received emails that used the inbox address with a +xyz alias.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PlusAddressId = "PlusAddressId_example" # String | The plus address ID to fetch emails for.
$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$Page = 987 # Int32 | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox tracking pixel list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by created after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)

# Get emails for a given inbox plus address
try {
     $Result = Get-InboxPlusAddressEmailsForPlusAddressId -PlusAddressId $PlusAddressId -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlusAddressEmailsForPlusAddressId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlusAddressId** | [**String**](String)| The plus address ID to fetch emails for. | 
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **Page** | **Int32**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by created after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlusAddresses"></a>
# **Get-InboxPlusAddresses**
> PagePlusAddressProjection Get-InboxPlusAddresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get sub address plus address aliases for an inbox

Returns paginated list of all plus alias addresses found for an inbox based on received emails that used the inbox address with a +xyz alias.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$Page = 987 # Int32 | Optional page index in inbox tracking pixel list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox tracking pixel list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get sub address plus address aliases for an inbox
try {
     $Result = Get-InboxPlusAddresses -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlusAddresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **Page** | **Int32**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PagePlusAddressProjection**](PagePlusAddressProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxSentCount"></a>
# **Get-InboxSentCount**
> CountDto Get-InboxSentCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get sent email count in inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of inbox that emails were sent from

# Get sent email count in inbox
try {
     $Result = Get-InboxSentCount -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-InboxSentCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of inbox that emails were sent from | 

### Return type

[**CountDto**](CountDto) (PSCustomObject)

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>

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

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)

# Get inbox tags
try {
     $Result = Get-InboxTags -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter
} catch {
    Write-Host ("Exception occured when calling Get-InboxTags: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxTagsPaginated"></a>
# **Get-InboxTagsPaginated**
> PageInboxTags Get-InboxTagsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>

Get inbox tags paginated

Get all inbox tags paginated

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

# Get inbox tags paginated
try {
     $Result = Get-InboxTagsPaginated -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter
} catch {
    Write-Host ("Exception occured when calling Get-InboxTagsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

[**PageInboxTags**](PageInboxTags) (PSCustomObject)

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeCatchAllInboxes] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String[]><br>

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.

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
$ExcludeCatchAllInboxes = true # Boolean | Optional exclude catch all inboxes (optional)
$Before = Get-Date # System.DateTime | Optional filter by created before given date time (optional)
$Include = @("Inner_example") # String[] | Optional inboxIds to include in result (optional)

# List Inboxes and email addresses
try {
     $Result = Get-Inboxes -Size $Size -Sort $Sort -Since $Since -ExcludeCatchAllInboxes $ExcludeCatchAllInboxes -Before $Before -Include $Include
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
 **ExcludeCatchAllInboxes** | **Boolean**| Optional exclude catch all inboxes | [optional] 
 **Before** | **System.DateTime**| Optional filter by created before given date time | [optional] 
 **Include** | [**String[]**](String)| Optional inboxIds to include in result | [optional] 

### Return type

[**InboxDto[]**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxesByTag"></a>
# **Get-InboxesByTag**
> PageInboxProjection Get-InboxesByTag<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tag] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>

Get inboxes for a tag

Get all inboxes for a given inbox tag

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Tag = "Tag_example" # String | Tag to filter by
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)

# Get inboxes for a tag
try {
     $Result = Get-InboxesByTag -Tag $Tag -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter
} catch {
    Write-Host ("Exception occured when calling Get-InboxesByTag: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Tag** | **String**| Tag to filter by | 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection) (PSCustomObject)

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

<a name="Get-Outboxes"></a>
# **Get-Outboxes**
> PageInboxProjection Get-Outboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List all inboxes with sent emails

List inboxes that have sent emails

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

# List all inboxes with sent emails
try {
     $Result = Get-Outboxes -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-Outboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageInboxProjection**](PageInboxProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ScheduledJob"></a>
# **Get-ScheduledJob**
> ScheduledJobDto Get-ScheduledJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Get a scheduled email job

Get a scheduled email job details.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$JobId = "JobId_example" # String | 

# Get a scheduled email job
try {
     $Result = Get-ScheduledJob -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Get-ScheduledJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JobId** | [**String**](String)|  | 

### Return type

[**ScheduledJobDto**](ScheduledJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ScheduledJobsByInboxId"></a>
# **Get-ScheduledJobsByInboxId**
> PageScheduledJobs Get-ScheduledJobsByInboxId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get all scheduled email sending jobs for the inbox

Schedule sending of emails using scheduled jobs.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 | Optional page index in scheduled job list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in scheduled job list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get all scheduled email sending jobs for the inbox
try {
     $Result = Get-ScheduledJobsByInboxId -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-ScheduledJobsByInboxId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in scheduled job list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in scheduled job list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SmtpAccess"></a>
# **Get-SmtpAccess**
> SmtpAccessDetails Get-SmtpAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Get SMTP access usernames and passwords

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
     $Result = Get-SmtpAccess -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-SmtpAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Inbox ID | [optional] 

### Return type

[**SmtpAccessDetails**](SmtpAccessDetails) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-IsEmailAddressAvailable"></a>
# **Invoke-IsEmailAddressAvailable**
> EmailAvailableResult Invoke-IsEmailAddressAvailable<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Is email address available

Returns whether an email address is available

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | 

# Is email address available
try {
     $Result = Invoke-IsEmailAddressAvailable -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Invoke-IsEmailAddressAvailable: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**|  | 

### Return type

[**EmailAvailableResult**](EmailAvailableResult) (PSCustomObject)

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

<a name="Search-Inboxes"></a>
# **Search-Inboxes**
> PageInboxProjection Search-Inboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchInboxesOptions] <PSCustomObject><br>

Search all inboxes and return matching inboxes

Search inboxes and return in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SearchInboxesOptions = (Initialize-SearchInboxesOptions -PageIndex 123 -PageSize 123 -SortDirection "ASC" -Favourite $false -Search "Search_example" -Tag "Tag_example" -Since Get-Date -Before Get-Date -InboxType "HTTP_INBOX" -InboxFunction "ALIAS" -DomainId "DomainId_example") # SearchInboxesOptions | 

# Search all inboxes and return matching inboxes
try {
     $Result = Search-Inboxes -SearchInboxesOptions $SearchInboxesOptions
} catch {
    Write-Host ("Exception occured when calling Search-Inboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SearchInboxesOptions** | [**SearchInboxesOptions**](SearchInboxesOptions)|  | 

### Return type

[**PageInboxProjection**](PageInboxProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example"))) # SendEmailOptions | 

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
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example"))) # SendEmailOptions | 

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

<a name="Send-WithSchedule"></a>
# **Send-WithSchedule**
> ScheduledJobDto Send-WithSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendAtTimestamp] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendAtNowPlusSeconds] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidateBeforeEnqueue] <System.Nullable[Boolean]><br>

Send email with with delay or schedule

Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of the inbox you want to send the email from
$SendEmailOptions =  # SendEmailOptions | 
$SendAtTimestamp = Get-Date # System.DateTime | Sending timestamp (optional)
$SendAtNowPlusSeconds = 987 # Int64 | Send after n seconds (optional)
$ValidateBeforeEnqueue = true # Boolean | Validate before adding to queue (optional)

# Send email with with delay or schedule
try {
     $Result = Send-WithSchedule -InboxId $InboxId -SendEmailOptions $SendEmailOptions -SendAtTimestamp $SendAtTimestamp -SendAtNowPlusSeconds $SendAtNowPlusSeconds -ValidateBeforeEnqueue $ValidateBeforeEnqueue
} catch {
    Write-Host ("Exception occured when calling Send-WithSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of the inbox you want to send the email from | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **SendAtTimestamp** | **System.DateTime**| Sending timestamp | [optional] 
 **SendAtNowPlusSeconds** | **Int64**| Send after n seconds | [optional] 
 **ValidateBeforeEnqueue** | **Boolean**| Validate before adding to queue | [optional] 

### Return type

[**ScheduledJobDto**](ScheduledJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Set-InboxFavourited"></a>
# **Set-InboxFavourited**
> InboxDto Set-InboxFavourited<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetInboxFavouritedOptions] <PSCustomObject><br>

Set inbox favourited state

Set and return new favorite state for an inbox

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

<a name="Update-ImapAccess"></a>
# **Update-ImapAccess**
> void Update-ImapAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateImapAccessOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Update IMAP access usernames and passwords

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UpdateImapAccessOptions = (Initialize-UpdateImapAccessOptions -ImapUsername "ImapUsername_example" -ImapPassword "ImapPassword_example") # UpdateImapAccessOptions | 
$InboxId = "InboxId_example" # String | Inbox ID (optional)

try {
     $Result = Update-ImapAccess -UpdateImapAccessOptions $UpdateImapAccessOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Update-ImapAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateImapAccessOptions** | [**UpdateImapAccessOptions**](UpdateImapAccessOptions)|  | 
 **InboxId** | [**String**](String)| Inbox ID | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

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

<a name="Update-SmtpAccess"></a>
# **Update-SmtpAccess**
> void Update-SmtpAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateSmtpAccessOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Update SMTP access usernames and passwords

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UpdateSmtpAccessOptions = (Initialize-UpdateSmtpAccessOptions -SmtpUsername "SmtpUsername_example" -SmtpPassword "SmtpPassword_example") # UpdateSmtpAccessOptions | 
$InboxId = "InboxId_example" # String | Inbox ID (optional)

try {
     $Result = Update-SmtpAccess -UpdateSmtpAccessOptions $UpdateSmtpAccessOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Update-SmtpAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateSmtpAccessOptions** | [**UpdateSmtpAccessOptions**](UpdateSmtpAccessOptions)|  | 
 **InboxId** | [**String**](String)| Inbox ID | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

