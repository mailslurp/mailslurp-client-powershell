# maislurp-client-powershell.maislurp-client-powershell/Api.InboxReplierControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NewInboxReplier**](InboxReplierControllerApi#New-NewInboxReplier) | **POST** /repliers | Create an inbox replier
[**Invoke-DeleteInboxReplier**](InboxReplierControllerApi#Invoke-DeleteInboxReplier) | **DELETE** /repliers/{id} | Delete an inbox replier
[**Invoke-DeleteInboxRepliers**](InboxReplierControllerApi#Invoke-DeleteInboxRepliers) | **DELETE** /repliers | Delete inbox repliers
[**Get-InboxReplier**](InboxReplierControllerApi#Get-InboxReplier) | **GET** /repliers/{id} | Get an inbox replier
[**Get-InboxReplierEvents**](InboxReplierControllerApi#Get-InboxReplierEvents) | **GET** /repliers/{id}/events | Get an inbox replier event list
[**Get-InboxRepliers**](InboxReplierControllerApi#Get-InboxRepliers) | **GET** /repliers | List inbox repliers
[**Update-InboxReplier**](InboxReplierControllerApi#Update-InboxReplier) | **PUT** /repliers/{id} | Update an inbox replier


<a name="New-NewInboxReplier"></a>
# **New-NewInboxReplier**
> InboxReplierDto New-NewInboxReplier<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxReplierOptions] <PSCustomObject><br>

Create an inbox replier

Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxReplierOptions = (Initialize-CreateInboxReplierOptions -InboxId "InboxId_example" -Name "Name_example" -Field "RECIPIENTS" -Match "Match_example" -ReplyTo "ReplyTo_example" -Subject "Subject_example" -VarFrom "VarFrom_example" -Charset "Charset_example" -IgnoreReplyTo $false -IsHTML $false -Body "Body_example" -TemplateId "TemplateId_example" -TemplateVariables "TODO") # CreateInboxReplierOptions | 

# Create an inbox replier
try {
     $Result = New-NewInboxReplier -CreateInboxReplierOptions $CreateInboxReplierOptions
} catch {
    Write-Host ("Exception occured when calling New-NewInboxReplier: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxReplierOptions** | [**CreateInboxReplierOptions**](CreateInboxReplierOptions)|  | 

### Return type

[**InboxReplierDto**](InboxReplierDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxReplier"></a>
# **Invoke-DeleteInboxReplier**
> void Invoke-DeleteInboxReplier<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an inbox replier

Delete inbox replier

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox replier

# Delete an inbox replier
try {
     $Result = Invoke-DeleteInboxReplier -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxReplier: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox replier | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxRepliers"></a>
# **Invoke-DeleteInboxRepliers**
> void Invoke-DeleteInboxRepliers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete inbox repliers

Delete inbox repliers. Accepts optional inboxId filter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to attach replier to (optional)

# Delete inbox repliers
try {
     $Result = Invoke-DeleteInboxRepliers -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxRepliers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to attach replier to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxReplier"></a>
# **Get-InboxReplier**
> InboxReplierDto Get-InboxReplier<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox replier

Get inbox ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox replier

# Get an inbox replier
try {
     $Result = Get-InboxReplier -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-InboxReplier: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox replier | 

### Return type

[**InboxReplierDto**](InboxReplierDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxReplierEvents"></a>
# **Get-InboxReplierEvents**
> PageInboxReplierEvents Get-InboxReplierEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get an inbox replier event list

Get inbox ruleset events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox replier
$Page = 987 # Int32 | Optional page index in inbox replier event list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox replier event list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get an inbox replier event list
try {
     $Result = Get-InboxReplierEvents -Id $Id -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-InboxReplierEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox replier | 
 **Page** | **Int32**| Optional page index in inbox replier event list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox replier event list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageInboxReplierEvents**](PageInboxReplierEvents) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRepliers"></a>
# **Get-InboxRepliers**
> PageInboxReplierDto Get-InboxRepliers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List inbox repliers

List all repliers attached to an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to get repliers from (optional)
$Page = 987 # Int32 | Optional page index in inbox replier list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox replier list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# List inbox repliers
try {
     $Result = Get-InboxRepliers -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxRepliers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to get repliers from | [optional] 
 **Page** | **Int32**| Optional page index in inbox replier list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox replier list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxReplierDto**](PageInboxReplierDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-InboxReplier"></a>
# **Update-InboxReplier**
> InboxReplierDto Update-InboxReplier<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateInboxReplierOptions] <PSCustomObject><br>

Update an inbox replier

Update inbox ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox replier
$UpdateInboxReplierOptions = (Initialize-UpdateInboxReplierOptions -InboxId "InboxId_example" -Name "Name_example" -Field "RECIPIENTS" -Match "Match_example" -ReplyTo "ReplyTo_example" -Subject "Subject_example" -VarFrom "VarFrom_example" -Charset "Charset_example" -IsHTML $false -IgnoreReplyTo $false -Body "Body_example" -TemplateId "TemplateId_example" -TemplateVariables "TODO") # UpdateInboxReplierOptions | 

# Update an inbox replier
try {
     $Result = Update-InboxReplier -Id $Id -UpdateInboxReplierOptions $UpdateInboxReplierOptions
} catch {
    Write-Host ("Exception occured when calling Update-InboxReplier: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox replier | 
 **UpdateInboxReplierOptions** | [**UpdateInboxReplierOptions**](UpdateInboxReplierOptions)|  | 

### Return type

[**InboxReplierDto**](InboxReplierDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

