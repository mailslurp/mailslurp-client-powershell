# maislurp-client-powershell.maislurp-client-powershell/Api.InboxRulesetControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NewInboxRuleset**](InboxRulesetControllerApi#New-NewInboxRuleset) | **POST** /rulesets | Create an inbox ruleset
[**Invoke-DeleteInboxRuleset**](InboxRulesetControllerApi#Invoke-DeleteInboxRuleset) | **DELETE** /rulesets/{id} | Delete an inbox ruleset
[**Invoke-DeleteInboxRulesets**](InboxRulesetControllerApi#Invoke-DeleteInboxRulesets) | **DELETE** /rulesets | Delete inbox rulesets
[**Get-InboxRuleset**](InboxRulesetControllerApi#Get-InboxRuleset) | **GET** /rulesets/{id} | Get an inbox ruleset
[**Get-InboxRulesets**](InboxRulesetControllerApi#Get-InboxRulesets) | **GET** /rulesets | List inbox rulesets
[**Test-InboxRuleset**](InboxRulesetControllerApi#Test-InboxRuleset) | **POST** /rulesets/{id}/test | Test an inbox ruleset
[**Test-InboxRulesetReceiving**](InboxRulesetControllerApi#Test-InboxRulesetReceiving) | **POST** /rulesets/test-receiving | Test receiving with inbox rulesets
[**Test-InboxRulesetSending**](InboxRulesetControllerApi#Test-InboxRulesetSending) | **POST** /rulesets/test-sending | Test sending with inbox rulesets
[**Test-InboxRulesetsForInbox**](InboxRulesetControllerApi#Test-InboxRulesetsForInbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**Test-NewInboxRuleset**](InboxRulesetControllerApi#Test-NewInboxRuleset) | **PATCH** /rulesets | Test new inbox ruleset


<a name="New-NewInboxRuleset"></a>
# **New-NewInboxRuleset**
> InboxRulesetDto New-NewInboxRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxRulesetOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

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

$CreateInboxRulesetOptions = (Initialize-CreateInboxRulesetOptions -Scope "RECEIVING_EMAILS" -Action "BLOCK" -Target "Target_example") # CreateInboxRulesetOptions | 
$InboxId = "InboxId_example" # String | Inbox id to attach ruleset to (optional)

# Create an inbox ruleset
try {
     $Result = New-NewInboxRuleset -CreateInboxRulesetOptions $CreateInboxRulesetOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling New-NewInboxRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 
 **InboxId** | [**String**](String)| Inbox id to attach ruleset to | [optional] 

### Return type

[**InboxRulesetDto**](InboxRulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxRuleset"></a>
# **Invoke-DeleteInboxRuleset**
> void Invoke-DeleteInboxRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an inbox ruleset

Delete inbox ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox ruleset

# Delete an inbox ruleset
try {
     $Result = Invoke-DeleteInboxRuleset -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxRulesets"></a>
# **Invoke-DeleteInboxRulesets**
> void Invoke-DeleteInboxRulesets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete inbox rulesets

Delete inbox rulesets. Accepts optional inboxId filter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to attach ruleset to (optional)

# Delete inbox rulesets
try {
     $Result = Invoke-DeleteInboxRulesets -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxRulesets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to attach ruleset to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRuleset"></a>
# **Get-InboxRuleset**
> InboxRulesetDto Get-InboxRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox ruleset

Get inbox ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox ruleset

# Get an inbox ruleset
try {
     $Result = Get-InboxRuleset -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-InboxRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox ruleset | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxRulesets"></a>
# **Get-InboxRulesets**
> PageInboxRulesetDto Get-InboxRulesets<br>
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

$InboxId = "InboxId_example" # String | Optional inbox id to get rulesets from (optional)
$Page = 987 # Int32 | Optional page index in inbox ruleset list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox ruleset list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# List inbox rulesets
try {
     $Result = Get-InboxRulesets -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxRulesets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to get rulesets from | [optional] 
 **Page** | **Int32**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxRuleset"></a>
# **Test-InboxRuleset**
> InboxRulesetTestResult Test-InboxRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxRulesetTestOptions] <PSCustomObject><br>

Test an inbox ruleset

Test an inbox ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox ruleset
$InboxRulesetTestOptions = (Initialize-InboxRulesetTestOptions -TestTarget "TestTarget_example") # InboxRulesetTestOptions | 

# Test an inbox ruleset
try {
     $Result = Test-InboxRuleset -Id $Id -InboxRulesetTestOptions $InboxRulesetTestOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox ruleset | 
 **InboxRulesetTestOptions** | [**InboxRulesetTestOptions**](InboxRulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxRulesetReceiving"></a>
# **Test-InboxRulesetReceiving**
> TestInboxRulesetReceivingResult Test-InboxRulesetReceiving<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestInboxRulesetReceivingOptions] <PSCustomObject><br>

Test receiving with inbox rulesets

Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestInboxRulesetReceivingOptions = (Initialize-TestInboxRulesetReceivingOptions -InboxId "InboxId_example" -FromSender "FromSender_example") # TestInboxRulesetReceivingOptions | 

# Test receiving with inbox rulesets
try {
     $Result = Test-InboxRulesetReceiving -TestInboxRulesetReceivingOptions $TestInboxRulesetReceivingOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxRulesetReceiving: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestInboxRulesetReceivingOptions** | [**TestInboxRulesetReceivingOptions**](TestInboxRulesetReceivingOptions)|  | 

### Return type

[**TestInboxRulesetReceivingResult**](TestInboxRulesetReceivingResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxRulesetSending"></a>
# **Test-InboxRulesetSending**
> TestInboxRulesetSendingResult Test-InboxRulesetSending<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestInboxRulesetSendingOptions] <PSCustomObject><br>

Test sending with inbox rulesets

Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestInboxRulesetSendingOptions = (Initialize-TestInboxRulesetSendingOptions -InboxId "InboxId_example" -Recipient "Recipient_example") # TestInboxRulesetSendingOptions | 

# Test sending with inbox rulesets
try {
     $Result = Test-InboxRulesetSending -TestInboxRulesetSendingOptions $TestInboxRulesetSendingOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxRulesetSending: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestInboxRulesetSendingOptions** | [**TestInboxRulesetSendingOptions**](TestInboxRulesetSendingOptions)|  | 

### Return type

[**TestInboxRulesetSendingResult**](TestInboxRulesetSendingResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxRulesetsForInbox"></a>
# **Test-InboxRulesetsForInbox**
> InboxRulesetTestResult Test-InboxRulesetsForInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxRulesetTestOptions] <PSCustomObject><br>

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox
$InboxRulesetTestOptions = (Initialize-InboxRulesetTestOptions -TestTarget "TestTarget_example") # InboxRulesetTestOptions | 

# Test inbox rulesets for inbox
try {
     $Result = Test-InboxRulesetsForInbox -InboxId $InboxId -InboxRulesetTestOptions $InboxRulesetTestOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxRulesetsForInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox | 
 **InboxRulesetTestOptions** | [**InboxRulesetTestOptions**](InboxRulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-NewInboxRuleset"></a>
# **Test-NewInboxRuleset**
> InboxRulesetTestResult Test-NewInboxRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestNewInboxRulesetOptions] <PSCustomObject><br>

Test new inbox ruleset

Test new inbox ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestNewInboxRulesetOptions = (Initialize-TestNewInboxRulesetOptions -InboxRulesetTestOptions  -CreateInboxRulesetOptions (Initialize-CreateInboxRulesetOptions -Scope "RECEIVING_EMAILS" -Action "BLOCK" -Target "Target_example")) # TestNewInboxRulesetOptions | 

# Test new inbox ruleset
try {
     $Result = Test-NewInboxRuleset -TestNewInboxRulesetOptions $TestNewInboxRulesetOptions
} catch {
    Write-Host ("Exception occured when calling Test-NewInboxRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestNewInboxRulesetOptions** | [**TestNewInboxRulesetOptions**](TestNewInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

