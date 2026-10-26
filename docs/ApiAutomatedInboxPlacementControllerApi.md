# maislurp-client-powershell.maislurp-client-powershell/Api.ApiAutomatedInboxPlacementControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-AutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#New-AutomatedInboxPlacementConnection) | **POST** /inbox-placement-tests/automations/connections | Create an encrypted sender connection
[**New-AutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#New-AutomatedInboxPlacementSchedule) | **POST** /inbox-placement-tests/automations/schedules | Create an automated inbox placement schedule
[**Invoke-DeleteAutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#Invoke-DeleteAutomatedInboxPlacementConnection) | **DELETE** /inbox-placement-tests/automations/connections/{connectionId} | Disconnect a sender connection
[**Invoke-DeleteAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#Invoke-DeleteAutomatedInboxPlacementSchedule) | **DELETE** /inbox-placement-tests/automations/schedules/{scheduleId} | Delete an automated inbox placement schedule
[**Get-AutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementConnection) | **GET** /inbox-placement-tests/automations/connections/{connectionId} | Get a sender connection
[**Get-AutomatedInboxPlacementConnections**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementConnections) | **GET** /inbox-placement-tests/automations/connections | List sender connections
[**Get-AutomatedInboxPlacementExecutionEvents**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementExecutionEvents) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId}/executions/{executionId}/events | List non-secret execution events
[**Get-AutomatedInboxPlacementExecutions**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementExecutions) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId}/executions | List schedule executions
[**Get-AutomatedInboxPlacementProviders**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementProviders) | **GET** /inbox-placement-tests/automations/providers | List automated inbox placement sender providers
[**Get-AutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementSchedule) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId} | Get an automated inbox placement schedule
[**Get-AutomatedInboxPlacementScheduleAnalyticsSeries**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementScheduleAnalyticsSeries) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId}/analytics/series | Get automation inbox placement analytics over time
[**Get-AutomatedInboxPlacementSchedules**](ApiAutomatedInboxPlacementControllerApi#Get-AutomatedInboxPlacementSchedules) | **GET** /inbox-placement-tests/automations/schedules | List automated inbox placement schedules
[**Invoke-RotateAutomatedInboxPlacementConnectionCredentials**](ApiAutomatedInboxPlacementControllerApi#Invoke-RotateAutomatedInboxPlacementConnectionCredentials) | **POST** /inbox-placement-tests/automations/connections/{connectionId}/credentials | Rotate sender connection credentials
[**Invoke-RunAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#Invoke-RunAutomatedInboxPlacementSchedule) | **POST** /inbox-placement-tests/automations/schedules/{scheduleId}/run | Run an automated inbox placement schedule now
[**Update-AutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#Update-AutomatedInboxPlacementConnection) | **PATCH** /inbox-placement-tests/automations/connections/{connectionId} | Update a sender connection
[**Update-AutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#Update-AutomatedInboxPlacementSchedule) | **PATCH** /inbox-placement-tests/automations/schedules/{scheduleId} | Update an automated inbox placement schedule
[**Test-AutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#Test-AutomatedInboxPlacementConnection) | **POST** /inbox-placement-tests/automations/connections/{connectionId}/verify | Verify a sender connection


<a name="New-AutomatedInboxPlacementConnection"></a>
# **New-AutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto New-AutomatedInboxPlacementConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAutomatedInboxPlacementConnectionOptions] <PSCustomObject><br>

Create an encrypted sender connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateAutomatedInboxPlacementConnectionOptions = (Initialize-CreateAutomatedInboxPlacementConnectionOptions -Name "Name_example" -Provider "SMTP" -FromEmail "FromEmail_example" -Smtp (Initialize-AutomatedInboxPlacementSmtpOptions -VarHost "VarHost_example" -Port 123 -Security "START_TLS" -Username "Username_example" -Password "Password_example")) # CreateAutomatedInboxPlacementConnectionOptions | 

# Create an encrypted sender connection
try {
     $Result = New-AutomatedInboxPlacementConnection -CreateAutomatedInboxPlacementConnectionOptions $CreateAutomatedInboxPlacementConnectionOptions
} catch {
    Write-Host ("Exception occured when calling New-AutomatedInboxPlacementConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateAutomatedInboxPlacementConnectionOptions** | [**CreateAutomatedInboxPlacementConnectionOptions**](CreateAutomatedInboxPlacementConnectionOptions)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-AutomatedInboxPlacementSchedule"></a>
# **New-AutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementScheduleDto New-AutomatedInboxPlacementSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAutomatedInboxPlacementScheduleOptions] <PSCustomObject><br>

Create an automated inbox placement schedule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateAutomatedInboxPlacementScheduleOptions = (Initialize-CreateAutomatedInboxPlacementScheduleOptions -ConnectionId "ConnectionId_example" -Name "Name_example" -IntervalMinutes 123 -Enabled $false -RequestedSegment "ALL_INBOXES" -SeedlistProfile "SeedlistProfile_example" -SubjectTemplate "SubjectTemplate_example" -TextBodyTemplate "TextBodyTemplate_example" -HtmlBodyTemplate "HtmlBodyTemplate_example" -SourceRunId "SourceRunId_example") # CreateAutomatedInboxPlacementScheduleOptions | 

# Create an automated inbox placement schedule
try {
     $Result = New-AutomatedInboxPlacementSchedule -CreateAutomatedInboxPlacementScheduleOptions $CreateAutomatedInboxPlacementScheduleOptions
} catch {
    Write-Host ("Exception occured when calling New-AutomatedInboxPlacementSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateAutomatedInboxPlacementScheduleOptions** | [**CreateAutomatedInboxPlacementScheduleOptions**](CreateAutomatedInboxPlacementScheduleOptions)|  | 

### Return type

[**AutomatedInboxPlacementScheduleDto**](AutomatedInboxPlacementScheduleDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAutomatedInboxPlacementConnection"></a>
# **Invoke-DeleteAutomatedInboxPlacementConnection**
> void Invoke-DeleteAutomatedInboxPlacementConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Disconnect a sender connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Disconnect a sender connection
try {
     $Result = Invoke-DeleteAutomatedInboxPlacementConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAutomatedInboxPlacementConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAutomatedInboxPlacementSchedule"></a>
# **Invoke-DeleteAutomatedInboxPlacementSchedule**
> void Invoke-DeleteAutomatedInboxPlacementSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>

Delete an automated inbox placement schedule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 

# Delete an automated inbox placement schedule
try {
     $Result = Invoke-DeleteAutomatedInboxPlacementSchedule -ScheduleId $ScheduleId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAutomatedInboxPlacementSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementConnection"></a>
# **Get-AutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto Get-AutomatedInboxPlacementConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Get a sender connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Get a sender connection
try {
     $Result = Get-AutomatedInboxPlacementConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementConnections"></a>
# **Get-AutomatedInboxPlacementConnections**
> AutomatedInboxPlacementConnectionDto[] Get-AutomatedInboxPlacementConnections<br>

List sender connections

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List sender connections
try {
     $Result = Get-AutomatedInboxPlacementConnections
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementConnections: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AutomatedInboxPlacementConnectionDto[]**](AutomatedInboxPlacementConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementExecutionEvents"></a>
# **Get-AutomatedInboxPlacementExecutionEvents**
> AutomatedInboxPlacementEventDto[] Get-AutomatedInboxPlacementExecutionEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExecutionId] <PSCustomObject><br>

List non-secret execution events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 
$ExecutionId = "ExecutionId_example" # String | 

# List non-secret execution events
try {
     $Result = Get-AutomatedInboxPlacementExecutionEvents -ScheduleId $ScheduleId -ExecutionId $ExecutionId
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementExecutionEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 
 **ExecutionId** | [**String**](String)|  | 

### Return type

[**AutomatedInboxPlacementEventDto[]**](AutomatedInboxPlacementEventDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementExecutions"></a>
# **Get-AutomatedInboxPlacementExecutions**
> AutomatedInboxPlacementExecutionDto[] Get-AutomatedInboxPlacementExecutions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List schedule executions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 
$Limit = 987 # Int32 |  (optional) (default to 50)

# List schedule executions
try {
     $Result = Get-AutomatedInboxPlacementExecutions -ScheduleId $ScheduleId -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementExecutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 
 **Limit** | **Int32**|  | [optional] [default to 50]

### Return type

[**AutomatedInboxPlacementExecutionDto[]**](AutomatedInboxPlacementExecutionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementProviders"></a>
# **Get-AutomatedInboxPlacementProviders**
> AutomatedInboxPlacementProviderDto[] Get-AutomatedInboxPlacementProviders<br>

List automated inbox placement sender providers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List automated inbox placement sender providers
try {
     $Result = Get-AutomatedInboxPlacementProviders
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AutomatedInboxPlacementProviderDto[]**](AutomatedInboxPlacementProviderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementSchedule"></a>
# **Get-AutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementScheduleDto Get-AutomatedInboxPlacementSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>

Get an automated inbox placement schedule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 

# Get an automated inbox placement schedule
try {
     $Result = Get-AutomatedInboxPlacementSchedule -ScheduleId $ScheduleId
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 

### Return type

[**AutomatedInboxPlacementScheduleDto**](AutomatedInboxPlacementScheduleDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementScheduleAnalyticsSeries"></a>
# **Get-AutomatedInboxPlacementScheduleAnalyticsSeries**
> InboxPlacementAnalyticsSeriesDto Get-AutomatedInboxPlacementScheduleAnalyticsSeries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Bucket] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunLimit] <System.Nullable[Int32]><br>

Get automation inbox placement analytics over time

Returns chart-ready metrics for billed placement runs created by this schedule only.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Bucket = "HOUR" # String |  (optional) (default to "DAY")
$RunLimit = 987 # Int32 |  (optional)

# Get automation inbox placement analytics over time
try {
     $Result = Get-AutomatedInboxPlacementScheduleAnalyticsSeries -ScheduleId $ScheduleId -Since $Since -Before $Before -Bucket $Bucket -RunLimit $RunLimit
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementScheduleAnalyticsSeries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Bucket** | **String**|  | [optional] [default to &quot;DAY&quot;]
 **RunLimit** | **Int32**|  | [optional] 

### Return type

[**InboxPlacementAnalyticsSeriesDto**](InboxPlacementAnalyticsSeriesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AutomatedInboxPlacementSchedules"></a>
# **Get-AutomatedInboxPlacementSchedules**
> AutomatedInboxPlacementScheduleDto[] Get-AutomatedInboxPlacementSchedules<br>

List automated inbox placement schedules

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List automated inbox placement schedules
try {
     $Result = Get-AutomatedInboxPlacementSchedules
} catch {
    Write-Host ("Exception occured when calling Get-AutomatedInboxPlacementSchedules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AutomatedInboxPlacementScheduleDto[]**](AutomatedInboxPlacementScheduleDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RotateAutomatedInboxPlacementConnectionCredentials"></a>
# **Invoke-RotateAutomatedInboxPlacementConnectionCredentials**
> AutomatedInboxPlacementConnectionDto Invoke-RotateAutomatedInboxPlacementConnectionCredentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RotateAutomatedInboxPlacementConnectionCredentialsOptions] <PSCustomObject><br>

Rotate sender connection credentials

Verifies the replacement SMTP settings before atomically replacing the encrypted credential envelope. A failed verification leaves the existing connection unchanged.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 
$RotateAutomatedInboxPlacementConnectionCredentialsOptions = (Initialize-RotateAutomatedInboxPlacementConnectionCredentialsOptions -Smtp (Initialize-AutomatedInboxPlacementSmtpOptions -VarHost "VarHost_example" -Port 123 -Security "START_TLS" -Username "Username_example" -Password "Password_example")) # RotateAutomatedInboxPlacementConnectionCredentialsOptions | 

# Rotate sender connection credentials
try {
     $Result = Invoke-RotateAutomatedInboxPlacementConnectionCredentials -ConnectionId $ConnectionId -RotateAutomatedInboxPlacementConnectionCredentialsOptions $RotateAutomatedInboxPlacementConnectionCredentialsOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-RotateAutomatedInboxPlacementConnectionCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 
 **RotateAutomatedInboxPlacementConnectionCredentialsOptions** | [**RotateAutomatedInboxPlacementConnectionCredentialsOptions**](RotateAutomatedInboxPlacementConnectionCredentialsOptions)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RunAutomatedInboxPlacementSchedule"></a>
# **Invoke-RunAutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementExecutionDto Invoke-RunAutomatedInboxPlacementSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>

Run an automated inbox placement schedule now

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 

# Run an automated inbox placement schedule now
try {
     $Result = Invoke-RunAutomatedInboxPlacementSchedule -ScheduleId $ScheduleId
} catch {
    Write-Host ("Exception occured when calling Invoke-RunAutomatedInboxPlacementSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 

### Return type

[**AutomatedInboxPlacementExecutionDto**](AutomatedInboxPlacementExecutionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-AutomatedInboxPlacementConnection"></a>
# **Update-AutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto Update-AutomatedInboxPlacementConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateAutomatedInboxPlacementConnectionOptions] <PSCustomObject><br>

Update a sender connection

Updates non-secret connection metadata. Use the credentials endpoint to replace SMTP credentials or transport settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 
$UpdateAutomatedInboxPlacementConnectionOptions = (Initialize-UpdateAutomatedInboxPlacementConnectionOptions -Name "Name_example" -FromEmail "FromEmail_example") # UpdateAutomatedInboxPlacementConnectionOptions | 

# Update a sender connection
try {
     $Result = Update-AutomatedInboxPlacementConnection -ConnectionId $ConnectionId -UpdateAutomatedInboxPlacementConnectionOptions $UpdateAutomatedInboxPlacementConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Update-AutomatedInboxPlacementConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 
 **UpdateAutomatedInboxPlacementConnectionOptions** | [**UpdateAutomatedInboxPlacementConnectionOptions**](UpdateAutomatedInboxPlacementConnectionOptions)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-AutomatedInboxPlacementSchedule"></a>
# **Update-AutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementScheduleDto Update-AutomatedInboxPlacementSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateAutomatedInboxPlacementScheduleOptions] <PSCustomObject><br>

Update an automated inbox placement schedule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ScheduleId = "ScheduleId_example" # String | 
$UpdateAutomatedInboxPlacementScheduleOptions = (Initialize-UpdateAutomatedInboxPlacementScheduleOptions -Name "Name_example" -IntervalMinutes 123 -Enabled $false -RequestedSegment "ALL_INBOXES" -SeedlistProfile "SeedlistProfile_example" -SubjectTemplate "SubjectTemplate_example" -TextBodyTemplate "TextBodyTemplate_example" -HtmlBodyTemplate "HtmlBodyTemplate_example") # UpdateAutomatedInboxPlacementScheduleOptions | 

# Update an automated inbox placement schedule
try {
     $Result = Update-AutomatedInboxPlacementSchedule -ScheduleId $ScheduleId -UpdateAutomatedInboxPlacementScheduleOptions $UpdateAutomatedInboxPlacementScheduleOptions
} catch {
    Write-Host ("Exception occured when calling Update-AutomatedInboxPlacementSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduleId** | [**String**](String)|  | 
 **UpdateAutomatedInboxPlacementScheduleOptions** | [**UpdateAutomatedInboxPlacementScheduleOptions**](UpdateAutomatedInboxPlacementScheduleOptions)|  | 

### Return type

[**AutomatedInboxPlacementScheduleDto**](AutomatedInboxPlacementScheduleDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-AutomatedInboxPlacementConnection"></a>
# **Test-AutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto Test-AutomatedInboxPlacementConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Verify a sender connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Verify a sender connection
try {
     $Result = Test-AutomatedInboxPlacementConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Test-AutomatedInboxPlacementConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

