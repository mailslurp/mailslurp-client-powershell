# maislurp-client-powershell.maislurp-client-powershell/Api.RulesetControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NewRuleset**](RulesetControllerApi#New-NewRuleset) | **POST** /rulesets | Create a ruleset
[**Invoke-DeleteRuleset**](RulesetControllerApi#Invoke-DeleteRuleset) | **DELETE** /rulesets/{id} | Delete a ruleset
[**Invoke-DeleteRulesets**](RulesetControllerApi#Invoke-DeleteRulesets) | **DELETE** /rulesets | Delete rulesets
[**Get-Ruleset**](RulesetControllerApi#Get-Ruleset) | **GET** /rulesets/{id} | Get a ruleset
[**Get-Rulesets**](RulesetControllerApi#Get-Rulesets) | **GET** /rulesets | List rulesets block and allow lists
[**Test-InboxRulesetsForInbox**](RulesetControllerApi#Test-InboxRulesetsForInbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**Test-NewRuleset**](RulesetControllerApi#Test-NewRuleset) | **PATCH** /rulesets | Test new ruleset
[**Test-Ruleset**](RulesetControllerApi#Test-Ruleset) | **POST** /rulesets/{id}/test | Test a ruleset
[**Test-RulesetReceiving**](RulesetControllerApi#Test-RulesetReceiving) | **POST** /rulesets/test-receiving | Test receiving with rulesets
[**Test-RulesetSending**](RulesetControllerApi#Test-RulesetSending) | **POST** /rulesets/test-sending | Test sending with rulesets


<a name="New-NewRuleset"></a>
# **New-NewRuleset**
> RulesetDto New-NewRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateRulesetOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>

Create a ruleset

Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateRulesetOptions = (Initialize-CreateRulesetOptions -Scope "RECEIVING_EMAILS" -Action "BLOCK" -Target "Target_example") # CreateRulesetOptions | 
$InboxId = "InboxId_example" # String | Inbox id to attach ruleset to (optional)
$PhoneId = "PhoneId_example" # String | Phone id to attach ruleset to (optional)

# Create a ruleset
try {
     $Result = New-NewRuleset -CreateRulesetOptions $CreateRulesetOptions -InboxId $InboxId -PhoneId $PhoneId
} catch {
    Write-Host ("Exception occured when calling New-NewRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateRulesetOptions** | [**CreateRulesetOptions**](CreateRulesetOptions)|  | 
 **InboxId** | [**String**](String)| Inbox id to attach ruleset to | [optional] 
 **PhoneId** | [**String**](String)| Phone id to attach ruleset to | [optional] 

### Return type

[**RulesetDto**](RulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteRuleset"></a>
# **Invoke-DeleteRuleset**
> void Invoke-DeleteRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete a ruleset

Delete ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of ruleset

# Delete a ruleset
try {
     $Result = Invoke-DeleteRuleset -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteRulesets"></a>
# **Invoke-DeleteRulesets**
> void Invoke-DeleteRulesets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>

Delete rulesets

Delete rulesets. Accepts optional inboxId or phoneId filters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to attach ruleset to (optional)
$PhoneId = "PhoneId_example" # String |  (optional)

# Delete rulesets
try {
     $Result = Invoke-DeleteRulesets -InboxId $InboxId -PhoneId $PhoneId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteRulesets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to attach ruleset to | [optional] 
 **PhoneId** | [**String**](String)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Ruleset"></a>
# **Get-Ruleset**
> RulesetDto Get-Ruleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get a ruleset

Get ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of ruleset

# Get a ruleset
try {
     $Result = Get-Ruleset -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-Ruleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of ruleset | 

### Return type

[**RulesetDto**](RulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Rulesets"></a>
# **Get-Rulesets**
> PageRulesetDto Get-Rulesets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List rulesets block and allow lists

List all rulesets attached to an inbox or phone or account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to get rulesets from (optional)
$PhoneId = "PhoneId_example" # String | Optional phone id to get rulesets from (optional)
$Page = 987 # Int32 | Optional page index in inbox ruleset list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox ruleset list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# List rulesets block and allow lists
try {
     $Result = Get-Rulesets -InboxId $InboxId -PhoneId $PhoneId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-Rulesets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to get rulesets from | [optional] 
 **PhoneId** | [**String**](String)| Optional phone id to get rulesets from | [optional] 
 **Page** | **Int32**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageRulesetDto**](PageRulesetDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxRulesetsForInbox"></a>
# **Test-InboxRulesetsForInbox**
> InboxRulesetTestResult Test-InboxRulesetsForInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RulesetTestOptions] <PSCustomObject><br>

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
$RulesetTestOptions = (Initialize-RulesetTestOptions -TestTarget "TestTarget_example") # RulesetTestOptions | 

# Test inbox rulesets for inbox
try {
     $Result = Test-InboxRulesetsForInbox -InboxId $InboxId -RulesetTestOptions $RulesetTestOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxRulesetsForInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox | 
 **RulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-NewRuleset"></a>
# **Test-NewRuleset**
> InboxRulesetTestResult Test-NewRuleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestNewInboxRulesetOptions] <PSCustomObject><br>

Test new ruleset

Test new ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestNewInboxRulesetOptions = (Initialize-TestNewInboxRulesetOptions -InboxRulesetTestOptions (Initialize-RulesetTestOptions -TestTarget "TestTarget_example") -CreateRulesetOptions (Initialize-CreateRulesetOptions -Scope "RECEIVING_EMAILS" -Action "BLOCK" -Target "Target_example")) # TestNewInboxRulesetOptions | 

# Test new ruleset
try {
     $Result = Test-NewRuleset -TestNewInboxRulesetOptions $TestNewInboxRulesetOptions
} catch {
    Write-Host ("Exception occured when calling Test-NewRuleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Test-Ruleset"></a>
# **Test-Ruleset**
> InboxRulesetTestResult Test-Ruleset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RulesetTestOptions] <PSCustomObject><br>

Test a ruleset

Test an inbox or phone ruleset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of ruleset
$RulesetTestOptions =  # RulesetTestOptions | 

# Test a ruleset
try {
     $Result = Test-Ruleset -Id $Id -RulesetTestOptions $RulesetTestOptions
} catch {
    Write-Host ("Exception occured when calling Test-Ruleset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of ruleset | 
 **RulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-RulesetReceiving"></a>
# **Test-RulesetReceiving**
> TestRulesetReceivingResult Test-RulesetReceiving<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRulesetReceivingOptions] <PSCustomObject><br>

Test receiving with rulesets

Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestRulesetReceivingOptions = (Initialize-TestRulesetReceivingOptions -InboxId "InboxId_example" -PhoneId "PhoneId_example" -FromSender "FromSender_example") # TestRulesetReceivingOptions | 

# Test receiving with rulesets
try {
     $Result = Test-RulesetReceiving -TestRulesetReceivingOptions $TestRulesetReceivingOptions
} catch {
    Write-Host ("Exception occured when calling Test-RulesetReceiving: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRulesetReceivingOptions** | [**TestRulesetReceivingOptions**](TestRulesetReceivingOptions)|  | 

### Return type

[**TestRulesetReceivingResult**](TestRulesetReceivingResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-RulesetSending"></a>
# **Test-RulesetSending**
> TestRulesetSendingResult Test-RulesetSending<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestInboxRulesetSendingOptions] <PSCustomObject><br>

Test sending with rulesets

Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestInboxRulesetSendingOptions = (Initialize-TestInboxRulesetSendingOptions -InboxId "InboxId_example" -PhoneId "PhoneId_example" -Recipient "Recipient_example") # TestInboxRulesetSendingOptions | 

# Test sending with rulesets
try {
     $Result = Test-RulesetSending -TestInboxRulesetSendingOptions $TestInboxRulesetSendingOptions
} catch {
    Write-Host ("Exception occured when calling Test-RulesetSending: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestInboxRulesetSendingOptions** | [**TestInboxRulesetSendingOptions**](TestInboxRulesetSendingOptions)|  | 

### Return type

[**TestRulesetSendingResult**](TestRulesetSendingResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

