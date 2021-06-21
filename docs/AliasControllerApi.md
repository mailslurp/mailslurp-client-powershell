# maislurp-client-powershell.maislurp-client-powershell/Api.AliasControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Alias**](AliasControllerApi#New-Alias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**Invoke-DeleteAlias**](AliasControllerApi#Invoke-DeleteAlias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**Get-Alias**](AliasControllerApi#Get-Alias) | **GET** /aliases/{aliasId} | Get an email alias
[**Get-AliasEmails**](AliasControllerApi#Get-AliasEmails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**Get-AliasThreads**](AliasControllerApi#Get-AliasThreads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**Get-Aliases**](AliasControllerApi#Get-Aliases) | **GET** /aliases | Get all email aliases you have created
[**Invoke-ReplyToAliasEmail**](AliasControllerApi#Invoke-ReplyToAliasEmail) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**Send-AliasEmail**](AliasControllerApi#Send-AliasEmail) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**Update-Alias**](AliasControllerApi#Update-Alias) | **PUT** /aliases/{aliasId} | Update an email alias


<a name="New-Alias"></a>
# **New-Alias**
> AliasDto New-Alias<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAliasOptions] <PSCustomObject><br>

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateAliasOptions = (Initialize-CreateAliasOptions -EmailAddress "EmailAddress_example" -InboxId "InboxId_example" -Name "Name_example" -UseThreads $false) # CreateAliasOptions | createAliasOptions

# Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
try {
     $Result = New-Alias -CreateAliasOptions $CreateAliasOptions
} catch {
    Write-Host ("Exception occured when calling New-Alias: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateAliasOptions** | [**CreateAliasOptions**](CreateAliasOptions)| createAliasOptions | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAlias"></a>
# **Invoke-DeleteAlias**
> void Invoke-DeleteAlias<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>

Delete an email alias

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | aliasId

# Delete an email alias
try {
     $Result = Invoke-DeleteAlias -AliasId $AliasId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAlias: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| aliasId | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Alias"></a>
# **Get-Alias**
> AliasDto Get-Alias<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>

Get an email alias

Get an email alias by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | aliasId

# Get an email alias
try {
     $Result = Get-Alias -AliasId $AliasId
} catch {
    Write-Host ("Exception occured when calling Get-Alias: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| aliasId | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AliasEmails"></a>
# **Get-AliasEmails**
> PageEmailProjection Get-AliasEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get emails for an alias

Get paginated emails for an alias by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | aliasId
$Page = 987 # Int32 | Optional page index alias email list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size alias email list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get emails for an alias
try {
     $Result = Get-AliasEmails -AliasId $AliasId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AliasEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| aliasId | 
 **Page** | **Int32**| Optional page index alias email list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size alias email list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AliasThreads"></a>
# **Get-AliasThreads**
> PageThreadProjection Get-AliasThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get threads created for an alias

Returns threads created for an email alias in paginated form

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | aliasId
$Page = 987 # Int32 | Optional page index in thread list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in thread list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get threads created for an alias
try {
     $Result = Get-AliasThreads -AliasId $AliasId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AliasThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| aliasId | 
 **Page** | **Int32**| Optional page index in thread list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in thread list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Aliases"></a>
# **Get-Aliases**
> PageAlias Get-Aliases<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get all email aliases you have created

Get all email aliases in paginated form

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in alias list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in alias list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get all email aliases you have created
try {
     $Result = Get-Aliases -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-Aliases: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in alias list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in alias list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**PageAlias**](PageAlias)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ReplyToAliasEmail"></a>
# **Invoke-ReplyToAliasEmail**
> SentEmailDto Invoke-ReplyToAliasEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplyToAliasEmailOptions] <PSCustomObject><br>

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | ID of the alias that email belongs to
$EmailId = "EmailId_example" # String | ID of the email that should be replied to
$ReplyToAliasEmailOptions = (Initialize-ReplyToAliasEmailOptions -Attachments @("Attachments_example") -Body "Body_example" -Charset "Charset_example" -IsHTML $false -SendStrategy "SINGLE_MESSAGE" -Template "Template_example" -TemplateVariables "TODO" -UseInboxName $false) # ReplyToAliasEmailOptions | replyToAliasEmailOptions

# Reply to an email
try {
     $Result = Invoke-ReplyToAliasEmail -AliasId $AliasId -EmailId $EmailId -ReplyToAliasEmailOptions $ReplyToAliasEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-ReplyToAliasEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| ID of the alias that email belongs to | 
 **EmailId** | [**String**](String)| ID of the email that should be replied to | 
 **ReplyToAliasEmailOptions** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions)| replyToAliasEmailOptions | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-AliasEmail"></a>
# **Send-AliasEmail**
> SentEmailDto Send-AliasEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>

Send an email from an alias inbox

Send an email from an alias. Replies to the email will be forwarded to the alias masked email address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | aliasId
$SendEmailOptions = (Initialize-SendEmailOptions -Attachments @("Attachments_example") -Bcc @("Bcc_example") -Body "Body_example" -Cc @("Cc_example") -Charset "Charset_example" -VarFrom "VarFrom_example" -Html $false -IsHTML $false -ReplyTo "ReplyTo_example" -SendStrategy "SINGLE_MESSAGE" -Subject "Subject_example" -Template "Template_example" -TemplateVariables "TODO" -To @("To_example") -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -UseInboxName $false) # SendEmailOptions | Options for the email to be sent (optional)

# Send an email from an alias inbox
try {
     $Result = Send-AliasEmail -AliasId $AliasId -SendEmailOptions $SendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Send-AliasEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| aliasId | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)| Options for the email to be sent | [optional] 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-Alias"></a>
# **Update-Alias**
> void Update-Alias<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateAliasOptions] <PSCustomObject><br>

Update an email alias

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AliasId = "AliasId_example" # String | aliasId
$UpdateAliasOptions = (Initialize-UpdateAliasOptions -Name "Name_example") # UpdateAliasOptions | updateAliasOptions

# Update an email alias
try {
     $Result = Update-Alias -AliasId $AliasId -UpdateAliasOptions $UpdateAliasOptions
} catch {
    Write-Host ("Exception occured when calling Update-Alias: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)| aliasId | 
 **UpdateAliasOptions** | [**UpdateAliasOptions**](UpdateAliasOptions)| updateAliasOptions | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

