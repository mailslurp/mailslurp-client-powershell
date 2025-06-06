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
[**Get-Thread**](AliasControllerApi#Get-Thread) | **GET** /aliases/threads/{threadId} | Get a thread
[**Get-ThreadsPaginated**](AliasControllerApi#Get-ThreadsPaginated) | **GET** /aliases/threads | Get all threads
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

$CreateAliasOptions = (Initialize-CreateAliasOptions -EmailAddress "EmailAddress_example" -InboxId "InboxId_example" -Name "Name_example" -UseThreads $false -DomainId "DomainId_example" -VerifyEmailAddress $false) # CreateAliasOptions | 

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
 **CreateAliasOptions** | [**CreateAliasOptions**](CreateAliasOptions)|  | 

### Return type

[**AliasDto**](AliasDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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

$AliasId = "AliasId_example" # String | 

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
 **AliasId** | [**String**](String)|  | 

### Return type

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

$AliasId = "AliasId_example" # String | 

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
 **AliasId** | [**String**](String)|  | 

### Return type

[**AliasDto**](AliasDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AliasEmails"></a>
# **Get-AliasEmails**
> PageEmailProjection Get-AliasEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

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

$AliasId = "AliasId_example" # String | 
$Page = 987 # Int32 | Optional page index alias email list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size alias email list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by sent after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by sent before given date time (optional)

# Get emails for an alias
try {
     $Result = Get-AliasEmails -AliasId $AliasId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-AliasEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index alias email list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size alias email list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by sent after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AliasThreads"></a>
# **Get-AliasThreads**
> PageAliasThreadProjection Get-AliasThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AliasId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

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

$AliasId = "AliasId_example" # String | 
$Page = 987 # Int32 | Optional page index in thread list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in thread list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by sent after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by sent before given date time (optional)

# Get threads created for an alias
try {
     $Result = Get-AliasThreads -AliasId $AliasId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-AliasThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AliasId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in thread list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in thread list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by sent after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageAliasThreadProjection**](PageAliasThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Aliases"></a>
# **Get-Aliases**
> PageAlias Get-Aliases<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

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

$Search = "Search_example" # String | Optional search term (optional)
$Page = 987 # Int32 | Optional page index in alias list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in alias list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get all email aliases you have created
try {
     $Result = Get-Aliases -Search $Search -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-Aliases: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Search** | **String**| Optional search term | [optional] 
 **Page** | **Int32**| Optional page index in alias list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in alias list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageAlias**](PageAlias) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Thread"></a>
# **Get-Thread**
> AliasThreadProjection Get-Thread<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThreadId] <PSCustomObject><br>

Get a thread

Return a thread associated with an alias

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ThreadId = "ThreadId_example" # String | 

# Get a thread
try {
     $Result = Get-Thread -ThreadId $ThreadId
} catch {
    Write-Host ("Exception occured when calling Get-Thread: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ThreadId** | [**String**](String)|  | 

### Return type

[**AliasThreadProjection**](AliasThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ThreadsPaginated"></a>
# **Get-ThreadsPaginated**
> PageAliasThreadProjection Get-ThreadsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get all threads

Returns threads created for all aliases in paginated form

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in thread list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in thread list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by sent after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by sent before given date time (optional)

# Get all threads
try {
     $Result = Get-ThreadsPaginated -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-ThreadsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in thread list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in thread list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by sent after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageAliasThreadProjection**](PageAliasThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
$ReplyToAliasEmailOptions = (Initialize-ReplyToAliasEmailOptions -Body "Body_example" -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -CustomHeaders "TODO" -UseInboxName $false -Html $false) # ReplyToAliasEmailOptions | 

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
 **ReplyToAliasEmailOptions** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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

$AliasId = "AliasId_example" # String | 
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example"))) # SendEmailOptions | 

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
 **AliasId** | [**String**](String)|  | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-Alias"></a>
# **Update-Alias**
> AliasDto Update-Alias<br>
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

$AliasId = "AliasId_example" # String | 
$UpdateAliasOptions = (Initialize-UpdateAliasOptions -Name "Name_example") # UpdateAliasOptions | 

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
 **AliasId** | [**String**](String)|  | 
 **UpdateAliasOptions** | [**UpdateAliasOptions**](UpdateAliasOptions)|  | 

### Return type

[**AliasDto**](AliasDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

