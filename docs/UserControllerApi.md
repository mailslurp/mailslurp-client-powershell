# maislurp-client-powershell.maislurp-client-powershell/Api.UserControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-InboxRetentionPolicy**](UserControllerApi#New-InboxRetentionPolicy) | **POST** /user/inbox-retention-policies | 
[**New-InboxRetentionPolicyRun**](UserControllerApi#New-InboxRetentionPolicyRun) | **POST** /user/inbox-retention-policies/account/run | 
[**New-OrUpdateInboxRetentionPolicyForAccount**](UserControllerApi#New-OrUpdateInboxRetentionPolicyForAccount) | **POST** /user/inbox-retention-policies/account | 
[**Invoke-DeleteInboxRetentionPolicy**](UserControllerApi#Invoke-DeleteInboxRetentionPolicy) | **DELETE** /user/inbox-retention-policies/{policyId} | 
[**Invoke-DeleteInboxRetentionPolicyForAccount**](UserControllerApi#Invoke-DeleteInboxRetentionPolicyForAccount) | **DELETE** /user/inbox-retention-policies/account | 
[**Get-EntityAutomations**](UserControllerApi#Get-EntityAutomations) | **GET** /user/automations | 
[**Get-EntityEvents**](UserControllerApi#Get-EntityEvents) | **GET** /user/events | 
[**Get-EntityFavorites**](UserControllerApi#Get-EntityFavorites) | **GET** /user/favorites | 
[**Get-InboxRetentionPolicy**](UserControllerApi#Get-InboxRetentionPolicy) | **GET** /user/inbox-retention-policies/{policyId} | 
[**Get-InboxRetentionPolicyForAccount**](UserControllerApi#Get-InboxRetentionPolicyForAccount) | **GET** /user/inbox-retention-policies/account | 
[**Get-InboxRetentionPolicyRun**](UserControllerApi#Get-InboxRetentionPolicyRun) | **GET** /user/inbox-retention-policies/runs/{runId} | 
[**Get-InboxRetentionPolicyRuns**](UserControllerApi#Get-InboxRetentionPolicyRuns) | **GET** /user/inbox-retention-policies/runs | 
[**Get-JsonPropertyAsString**](UserControllerApi#Get-JsonPropertyAsString) | **POST** /user/json/pluck | 
[**Get-UserInfo**](UserControllerApi#Get-UserInfo) | **GET** /user/info | 
[**Get-UserStorageInsights**](UserControllerApi#Get-UserStorageInsights) | **GET** /user/storage/insights | 
[**Invoke-ListInboxRetentionPolicies**](UserControllerApi#Invoke-ListInboxRetentionPolicies) | **GET** /user/inbox-retention-policies | 
[**Update-InboxRetentionPolicy**](UserControllerApi#Update-InboxRetentionPolicy) | **PUT** /user/inbox-retention-policies/{policyId} | 


<a name="New-InboxRetentionPolicy"></a>
# **New-InboxRetentionPolicy**
> InboxRetentionPolicyDto New-InboxRetentionPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxRetentionPolicyOptions] <PSCustomObject><br>



Create an inbox retention policy for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxRetentionPolicyOptions = (Initialize-CreateInboxRetentionPolicyOptions -Name "Name_example" -Scope "ACCOUNT" -RetentionDays 123 -InboxId "InboxId_example" -DomainId "DomainId_example" -Enabled $false -ExcludedInboxIds @("ExcludedInboxIds_example") -ExcludedDomainIds @("ExcludedDomainIds_example") -ExcludedInboxEmailAddressPatterns @("ExcludedInboxEmailAddressPatterns_example") -ExcludedDomainNamePatterns @("ExcludedDomainNamePatterns_example")) # CreateInboxRetentionPolicyOptions | 

try {
     $Result = New-InboxRetentionPolicy -CreateInboxRetentionPolicyOptions $CreateInboxRetentionPolicyOptions
} catch {
    Write-Host ("Exception occured when calling New-InboxRetentionPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxRetentionPolicyOptions** | [**CreateInboxRetentionPolicyOptions**](CreateInboxRetentionPolicyOptions)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-InboxRetentionPolicyRun"></a>
# **New-InboxRetentionPolicyRun**
> InboxRetentionPolicyRunDto New-InboxRetentionPolicyRun<br>



Start an asynchronous inbox retention policy run for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = New-InboxRetentionPolicyRun
} catch {
    Write-Host ("Exception occured when calling New-InboxRetentionPolicyRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxRetentionPolicyRunDto**](InboxRetentionPolicyRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-OrUpdateInboxRetentionPolicyForAccount"></a>
# **New-OrUpdateInboxRetentionPolicyForAccount**
> InboxRetentionPolicyDto New-OrUpdateInboxRetentionPolicyForAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxRetentionPolicyForAccountOptions] <PSCustomObject><br>



Create inbox retention policy for your global account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxRetentionPolicyForAccountOptions = (Initialize-CreateInboxRetentionPolicyForAccountOptions -RetentionDays 123) # CreateInboxRetentionPolicyForAccountOptions | 

try {
     $Result = New-OrUpdateInboxRetentionPolicyForAccount -CreateInboxRetentionPolicyForAccountOptions $CreateInboxRetentionPolicyForAccountOptions
} catch {
    Write-Host ("Exception occured when calling New-OrUpdateInboxRetentionPolicyForAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxRetentionPolicyForAccountOptions** | [**CreateInboxRetentionPolicyForAccountOptions**](CreateInboxRetentionPolicyForAccountOptions)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxRetentionPolicy"></a>
# **Invoke-DeleteInboxRetentionPolicy**
> EmptyResponseDto Invoke-DeleteInboxRetentionPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <PSCustomObject><br>



Delete an inbox retention policy for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PolicyId = "PolicyId_example" # String | 

try {
     $Result = Invoke-DeleteInboxRetentionPolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxRetentionPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | [**String**](String)|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxRetentionPolicyForAccount"></a>
# **Invoke-DeleteInboxRetentionPolicyForAccount**
> EmptyResponseDto Invoke-DeleteInboxRetentionPolicyForAccount<br>



Delete inbox retention policy for your global account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Invoke-DeleteInboxRetentionPolicyForAccount
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxRetentionPolicyForAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmptyResponseDto**](EmptyResponseDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EntityAutomations"></a>
# **Get-EntityAutomations**
> PageEntityAutomationItems Get-EntityAutomations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index (optional) (default to 0)
$Size = 987 # Int32 | Optional page size (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$InboxId = "InboxId_example" # String | Optional inbox ID (optional)
$PhoneId = "PhoneId_example" # String | Optional phone ID (optional)
$Filter = "INBOX_FORWARDER" # String | Optional automation type filter (optional)

try {
     $Result = Get-EntityAutomations -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -InboxId $InboxId -PhoneId $PhoneId -Filter $Filter
} catch {
    Write-Host ("Exception occured when calling Get-EntityAutomations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index | [optional] [default to 0]
 **Size** | **Int32**| Optional page size | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **InboxId** | [**String**](String)| Optional inbox ID | [optional] 
 **PhoneId** | [**String**](String)| Optional phone ID | [optional] 
 **Filter** | **String**| Optional automation type filter | [optional] 

### Return type

[**PageEntityAutomationItems**](PageEntityAutomationItems) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EntityEvents"></a>
# **Get-EntityEvents**
> PageEntityEventItems Get-EntityEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index (optional) (default to 0)
$Size = 987 # Int32 | Optional page size (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$InboxId = "InboxId_example" # String | Optional inbox ID (optional)
$EmailId = "EmailId_example" # String | Optional email ID (optional)
$PhoneId = "PhoneId_example" # String | Optional phone ID (optional)
$SmsId = "SmsId_example" # String | Optional SMS ID (optional)
$AttachmentId = "AttachmentId_example" # String | Optional attachment ID (optional)
$Filter = "WEBHOOK_EVENT" # String | Optional type filter (optional)

try {
     $Result = Get-EntityEvents -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -InboxId $InboxId -EmailId $EmailId -PhoneId $PhoneId -SmsId $SmsId -AttachmentId $AttachmentId -Filter $Filter
} catch {
    Write-Host ("Exception occured when calling Get-EntityEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index | [optional] [default to 0]
 **Size** | **Int32**| Optional page size | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **InboxId** | [**String**](String)| Optional inbox ID | [optional] 
 **EmailId** | [**String**](String)| Optional email ID | [optional] 
 **PhoneId** | [**String**](String)| Optional phone ID | [optional] 
 **SmsId** | [**String**](String)| Optional SMS ID | [optional] 
 **AttachmentId** | [**String**](String)| Optional attachment ID | [optional] 
 **Filter** | **String**| Optional type filter | [optional] 

### Return type

[**PageEntityEventItems**](PageEntityEventItems) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EntityFavorites"></a>
# **Get-EntityFavorites**
> PageEntityFavouriteItems Get-EntityFavorites<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index (optional) (default to 0)
$Size = 987 # Int32 | Optional page size (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Filter = "INBOX" # String | Optional type filter (optional)

try {
     $Result = Get-EntityFavorites -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Filter $Filter
} catch {
    Write-Host ("Exception occured when calling Get-EntityFavorites: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index | [optional] [default to 0]
 **Size** | **Int32**| Optional page size | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Filter** | **String**| Optional type filter | [optional] 

### Return type

[**PageEntityFavouriteItems**](PageEntityFavouriteItems) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRetentionPolicy"></a>
# **Get-InboxRetentionPolicy**
> InboxRetentionPolicyDto Get-InboxRetentionPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <PSCustomObject><br>



Get an inbox retention policy for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PolicyId = "PolicyId_example" # String | 

try {
     $Result = Get-InboxRetentionPolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occured when calling Get-InboxRetentionPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | [**String**](String)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRetentionPolicyForAccount"></a>
# **Get-InboxRetentionPolicyForAccount**
> InboxRetentionPolicyOptionalDto Get-InboxRetentionPolicyForAccount<br>



Get inbox retention policy for your global account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-InboxRetentionPolicyForAccount
} catch {
    Write-Host ("Exception occured when calling Get-InboxRetentionPolicyForAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxRetentionPolicyOptionalDto**](InboxRetentionPolicyOptionalDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRetentionPolicyRun"></a>
# **Get-InboxRetentionPolicyRun**
> InboxRetentionPolicyRunDto Get-InboxRetentionPolicyRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>



Get a previously submitted inbox retention policy run for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

try {
     $Result = Get-InboxRetentionPolicyRun -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Get-InboxRetentionPolicyRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

[**InboxRetentionPolicyRunDto**](InboxRetentionPolicyRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRetentionPolicyRuns"></a>
# **Get-InboxRetentionPolicyRuns**
> PageInboxRetentionPolicyRunProjection Get-InboxRetentionPolicyRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>



List recent inbox retention policy runs for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index (optional) (default to 0)
$Size = 987 # Int32 | Optional page size (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")

try {
     $Result = Get-InboxRetentionPolicyRuns -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-InboxRetentionPolicyRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index | [optional] [default to 0]
 **Size** | **Int32**| Optional page size | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]

### Return type

[**PageInboxRetentionPolicyRunProjection**](PageInboxRetentionPolicyRunProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-JsonPropertyAsString"></a>
# **Get-JsonPropertyAsString**
> String Get-JsonPropertyAsString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Property] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonNode] <PSCustomObject><br>



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Property = "Property_example" # String | JSON property name or dot separated path selector such as `a.b.c`
$JsonNode = (Initialize-JsonNode -String $false -Object $false -Float $false -Empty $false -Array $false -VarNull $false -Container $false -Textual $false -MissingNode $false -ValueNode $false -NodeType "ARRAY" -Pojo $false -Number $false -IntegralNumber $false -FloatingPointNumber $false -Short $false -Int $false -Long $false -Double $false -BigDecimal $false -BigInteger $false -Boolean $false -Binary $false -EmbeddedValue $false) # JsonNode | 

try {
     $Result = Get-JsonPropertyAsString -Property $Property -JsonNode $JsonNode
} catch {
    Write-Host ("Exception occured when calling Get-JsonPropertyAsString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Property** | **String**| JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **JsonNode** | [**JsonNode**](JsonNode)|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-UserInfo"></a>
# **Get-UserInfo**
> UserInfoDto Get-UserInfo<br>



Get account information for your user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-UserInfo
} catch {
    Write-Host ("Exception occured when calling Get-UserInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-UserStorageInsights"></a>
# **Get-UserStorageInsights**
> UserStorageInsightsDto Get-UserStorageInsights<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>



Get retained storage usage insights for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Limit = 987 # Int32 | Maximum number of inboxes and domains to return (optional) (default to 10)

try {
     $Result = Get-UserStorageInsights -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-UserStorageInsights: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Maximum number of inboxes and domains to return | [optional] [default to 10]

### Return type

[**UserStorageInsightsDto**](UserStorageInsightsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ListInboxRetentionPolicies"></a>
# **Invoke-ListInboxRetentionPolicies**
> InboxRetentionPoliciesDto Invoke-ListInboxRetentionPolicies<br>



List inbox retention policies for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Invoke-ListInboxRetentionPolicies
} catch {
    Write-Host ("Exception occured when calling Invoke-ListInboxRetentionPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxRetentionPoliciesDto**](InboxRetentionPoliciesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-InboxRetentionPolicy"></a>
# **Update-InboxRetentionPolicy**
> InboxRetentionPolicyDto Update-InboxRetentionPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateInboxRetentionPolicyOptions] <PSCustomObject><br>



Update an inbox retention policy for your account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PolicyId = "PolicyId_example" # String | 
$UpdateInboxRetentionPolicyOptions = (Initialize-UpdateInboxRetentionPolicyOptions -Name "Name_example" -Scope "ACCOUNT" -RetentionDays 123 -InboxId "InboxId_example" -DomainId "DomainId_example" -Enabled $false -ExcludedInboxIds @("ExcludedInboxIds_example") -ExcludedDomainIds @("ExcludedDomainIds_example") -ExcludedInboxEmailAddressPatterns @("ExcludedInboxEmailAddressPatterns_example") -ExcludedDomainNamePatterns @("ExcludedDomainNamePatterns_example")) # UpdateInboxRetentionPolicyOptions | 

try {
     $Result = Update-InboxRetentionPolicy -PolicyId $PolicyId -UpdateInboxRetentionPolicyOptions $UpdateInboxRetentionPolicyOptions
} catch {
    Write-Host ("Exception occured when calling Update-InboxRetentionPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | [**String**](String)|  | 
 **UpdateInboxRetentionPolicyOptions** | [**UpdateInboxRetentionPolicyOptions**](UpdateInboxRetentionPolicyOptions)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

