# maislurp-client-powershell.maislurp-client-powershell/Api.InboxForwarderControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NewInboxForwarder**](InboxForwarderControllerApi#New-NewInboxForwarder) | **POST** /forwarders | Create an inbox forwarder
[**Invoke-DeleteInboxForwarder**](InboxForwarderControllerApi#Invoke-DeleteInboxForwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**Invoke-DeleteInboxForwarders**](InboxForwarderControllerApi#Invoke-DeleteInboxForwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**Get-AllInboxForwarderEvents**](InboxForwarderControllerApi#Get-AllInboxForwarderEvents) | **GET** /forwarders/events | Get all inbox forwarder events
[**Get-ForwarderEvent**](InboxForwarderControllerApi#Get-ForwarderEvent) | **GET** /forwarders/events/{eventId} | Get a forwarder event
[**Get-InboxForwarder**](InboxForwarderControllerApi#Get-InboxForwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**Get-InboxForwarderEvent**](InboxForwarderControllerApi#Get-InboxForwarderEvent) | **GET** /forwarders/{id}/events/{eventId} | Get an inbox forwarder event
[**Get-InboxForwarderEvents**](InboxForwarderControllerApi#Get-InboxForwarderEvents) | **GET** /forwarders/{id}/events | Get an inbox forwarder event list
[**Get-InboxForwarders**](InboxForwarderControllerApi#Get-InboxForwarders) | **GET** /forwarders | List inbox forwarders
[**Test-InboxForwarder**](InboxForwarderControllerApi#Test-InboxForwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**Test-InboxForwardersForInbox**](InboxForwarderControllerApi#Test-InboxForwardersForInbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**Test-NewInboxForwarder**](InboxForwarderControllerApi#Test-NewInboxForwarder) | **PATCH** /forwarders | Test new inbox forwarder
[**Update-InboxForwarder**](InboxForwarderControllerApi#Update-InboxForwarder) | **PUT** /forwarders/{id} | Update an inbox forwarder


<a name="New-NewInboxForwarder"></a>
# **New-NewInboxForwarder**
> InboxForwarderDto New-NewInboxForwarder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxForwarderOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Create an inbox forwarder

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxForwarderOptions = (Initialize-CreateInboxForwarderOptions -Field "RECIPIENTS" -Match "Match_example" -ForwardToRecipients @("ForwardToRecipients_example")) # CreateInboxForwarderOptions | 
$InboxId = "InboxId_example" # String | Inbox id to attach forwarder to (optional)

# Create an inbox forwarder
try {
     $Result = New-NewInboxForwarder -CreateInboxForwarderOptions $CreateInboxForwarderOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling New-NewInboxForwarder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxForwarderOptions** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 
 **InboxId** | [**String**](String)| Inbox id to attach forwarder to | [optional] 

### Return type

[**InboxForwarderDto**](InboxForwarderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxForwarder"></a>
# **Invoke-DeleteInboxForwarder**
> void Invoke-DeleteInboxForwarder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an inbox forwarder

Delete inbox forwarder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox forwarder

# Delete an inbox forwarder
try {
     $Result = Invoke-DeleteInboxForwarder -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxForwarder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox forwarder | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteInboxForwarders"></a>
# **Invoke-DeleteInboxForwarders**
> void Invoke-DeleteInboxForwarders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete inbox forwarders

Delete inbox forwarders. Accepts optional inboxId filter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to attach forwarder to (optional)

# Delete inbox forwarders
try {
     $Result = Invoke-DeleteInboxForwarders -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteInboxForwarders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to attach forwarder to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllInboxForwarderEvents"></a>
# **Get-AllInboxForwarderEvents**
> PageInboxForwarderEvents Get-AllInboxForwarderEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SentId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get all inbox forwarder events

Get all inbox forwarder events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in inbox forwarder event list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox forwarder event list pagination (optional) (default to 20)
$InboxId = "InboxId_example" # String | Optional inbox ID to filter for (optional)
$EmailId = "EmailId_example" # String | Optional email ID to filter for (optional)
$SentId = "SentId_example" # String | Optional sent ID to filter for (optional)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get all inbox forwarder events
try {
     $Result = Get-AllInboxForwarderEvents -Page $Page -Size $Size -InboxId $InboxId -EmailId $EmailId -SentId $SentId -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllInboxForwarderEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in inbox forwarder event list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox forwarder event list pagination | [optional] [default to 20]
 **InboxId** | [**String**](String)| Optional inbox ID to filter for | [optional] 
 **EmailId** | [**String**](String)| Optional email ID to filter for | [optional] 
 **SentId** | [**String**](String)| Optional sent ID to filter for | [optional] 
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageInboxForwarderEvents**](PageInboxForwarderEvents) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ForwarderEvent"></a>
# **Get-ForwarderEvent**
> InboxForwarderEventDto Get-ForwarderEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventId] <PSCustomObject><br>

Get a forwarder event

Get forwarder event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EventId = "EventId_example" # String | ID of inbox forwarder event

# Get a forwarder event
try {
     $Result = Get-ForwarderEvent -EventId $EventId
} catch {
    Write-Host ("Exception occured when calling Get-ForwarderEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventId** | [**String**](String)| ID of inbox forwarder event | 

### Return type

[**InboxForwarderEventDto**](InboxForwarderEventDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxForwarder"></a>
# **Get-InboxForwarder**
> InboxForwarderDto Get-InboxForwarder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox forwarder

Get inbox forwarder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox forwarder

# Get an inbox forwarder
try {
     $Result = Get-InboxForwarder -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-InboxForwarder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox forwarder | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxForwarderEvent"></a>
# **Get-InboxForwarderEvent**
> InboxForwarderEventDto Get-InboxForwarderEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventId] <PSCustomObject><br>

Get an inbox forwarder event

Get inbox forwarder event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox forwarder
$EventId = "EventId_example" # String | ID of inbox forwarder event

# Get an inbox forwarder event
try {
     $Result = Get-InboxForwarderEvent -Id $Id -EventId $EventId
} catch {
    Write-Host ("Exception occured when calling Get-InboxForwarderEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox forwarder | 
 **EventId** | [**String**](String)| ID of inbox forwarder event | 

### Return type

[**InboxForwarderEventDto**](InboxForwarderEventDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxForwarderEvents"></a>
# **Get-InboxForwarderEvents**
> PageInboxForwarderEvents Get-InboxForwarderEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get an inbox forwarder event list

Get inbox forwarder events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox forwarder
$Page = 987 # Int32 | Optional page index in inbox forwarder event list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox forwarder event list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get an inbox forwarder event list
try {
     $Result = Get-InboxForwarderEvents -Id $Id -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-InboxForwarderEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox forwarder | 
 **Page** | **Int32**| Optional page index in inbox forwarder event list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox forwarder event list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageInboxForwarderEvents**](PageInboxForwarderEvents) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxForwarders"></a>
# **Get-InboxForwarders**
> PageInboxForwarderDto Get-InboxForwarders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List inbox forwarders

List all forwarders attached to an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Optional inbox id to get forwarders from (optional)
$Page = 987 # Int32 | Optional page index in inbox forwarder list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox forwarder list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# List inbox forwarders
try {
     $Result = Get-InboxForwarders -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-InboxForwarders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Optional inbox id to get forwarders from | [optional] 
 **Page** | **Int32**| Optional page index in inbox forwarder list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox forwarder list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxForwarderDto**](PageInboxForwarderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxForwarder"></a>
# **Test-InboxForwarder**
> InboxForwarderTestResult Test-InboxForwarder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxForwarderTestOptions] <PSCustomObject><br>

Test an inbox forwarder

Test an inbox forwarder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox forwarder
$InboxForwarderTestOptions = (Initialize-InboxForwarderTestOptions -TestValue "TestValue_example") # InboxForwarderTestOptions | 

# Test an inbox forwarder
try {
     $Result = Test-InboxForwarder -Id $Id -InboxForwarderTestOptions $InboxForwarderTestOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxForwarder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox forwarder | 
 **InboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-InboxForwardersForInbox"></a>
# **Test-InboxForwardersForInbox**
> InboxForwarderTestResult Test-InboxForwardersForInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxForwarderTestOptions] <PSCustomObject><br>

Test inbox forwarders for inbox

Test inbox forwarders for inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox
$InboxForwarderTestOptions = (Initialize-InboxForwarderTestOptions -TestValue "TestValue_example") # InboxForwarderTestOptions | 

# Test inbox forwarders for inbox
try {
     $Result = Test-InboxForwardersForInbox -InboxId $InboxId -InboxForwarderTestOptions $InboxForwarderTestOptions
} catch {
    Write-Host ("Exception occured when calling Test-InboxForwardersForInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox | 
 **InboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-NewInboxForwarder"></a>
# **Test-NewInboxForwarder**
> InboxForwarderTestResult Test-NewInboxForwarder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestNewInboxForwarderOptions] <PSCustomObject><br>

Test new inbox forwarder

Test new inbox forwarder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestNewInboxForwarderOptions = (Initialize-TestNewInboxForwarderOptions -InboxForwarderTestOptions  -CreateInboxForwarderOptions (Initialize-CreateInboxForwarderOptions -Field "RECIPIENTS" -Match "Match_example" -ForwardToRecipients @("ForwardToRecipients_example"))) # TestNewInboxForwarderOptions | 

# Test new inbox forwarder
try {
     $Result = Test-NewInboxForwarder -TestNewInboxForwarderOptions $TestNewInboxForwarderOptions
} catch {
    Write-Host ("Exception occured when calling Test-NewInboxForwarder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestNewInboxForwarderOptions** | [**TestNewInboxForwarderOptions**](TestNewInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-InboxForwarder"></a>
# **Update-InboxForwarder**
> InboxForwarderDto Update-InboxForwarder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxForwarderOptions] <PSCustomObject><br>

Update an inbox forwarder

Update inbox forwarder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of inbox forwarder
$CreateInboxForwarderOptions =  # CreateInboxForwarderOptions | 

# Update an inbox forwarder
try {
     $Result = Update-InboxForwarder -Id $Id -CreateInboxForwarderOptions $CreateInboxForwarderOptions
} catch {
    Write-Host ("Exception occured when calling Update-InboxForwarder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of inbox forwarder | 
 **CreateInboxForwarderOptions** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

