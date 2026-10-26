# maislurp-client-powershell.maislurp-client-powershell/Api.ApiEmailWarmupControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-EmailWarmupProgram**](ApiEmailWarmupControllerApi#New-EmailWarmupProgram) | **POST** /email-warmup/programs | Create an email warmup program
[**Invoke-DeleteEmailWarmupProgram**](ApiEmailWarmupControllerApi#Invoke-DeleteEmailWarmupProgram) | **DELETE** /email-warmup/programs/{programId} | Delete an email warmup program
[**Invoke-DeleteEmailWarmupSenderSeats**](ApiEmailWarmupControllerApi#Invoke-DeleteEmailWarmupSenderSeats) | **DELETE** /email-warmup/programs/sender-seats | Cancel purchased email warmup sender seats
[**Get-EmailWarmupOverview**](ApiEmailWarmupControllerApi#Get-EmailWarmupOverview) | **GET** /email-warmup/programs/overview | Get operational email warmup activity and program progress
[**Get-EmailWarmupPlacementChecks**](ApiEmailWarmupControllerApi#Get-EmailWarmupPlacementChecks) | **GET** /email-warmup/programs/{programId}/placement-checks | List Gmail and Outlook placement checks for an email warmup program
[**Get-EmailWarmupProgram**](ApiEmailWarmupControllerApi#Get-EmailWarmupProgram) | **GET** /email-warmup/programs/{programId} | Get an email warmup program
[**Get-EmailWarmupProgramAnalytics**](ApiEmailWarmupControllerApi#Get-EmailWarmupProgramAnalytics) | **GET** /email-warmup/programs/{programId}/analytics | Get email warmup program progress and daily activity
[**Get-EmailWarmupPrograms**](ApiEmailWarmupControllerApi#Get-EmailWarmupPrograms) | **GET** /email-warmup/programs | List email warmup programs
[**Get-EmailWarmupReadiness**](ApiEmailWarmupControllerApi#Get-EmailWarmupReadiness) | **GET** /email-warmup/programs/{programId}/readiness | Get warmup readiness, adaptive pacing, and sender-health signals
[**Get-EmailWarmupSlots**](ApiEmailWarmupControllerApi#Get-EmailWarmupSlots) | **GET** /email-warmup/programs/{programId}/slots | List scheduled email warmup slots
[**Get-EmailWarmupUsage**](ApiEmailWarmupControllerApi#Get-EmailWarmupUsage) | **GET** /email-warmup/programs/usage | Get email warmup sender capacity, included credits, and billable usage
[**Suspend-EmailWarmupProgram**](ApiEmailWarmupControllerApi#Suspend-EmailWarmupProgram) | **POST** /email-warmup/programs/{programId}/pause | Pause an email warmup program
[**Resume-EmailWarmupProgram**](ApiEmailWarmupControllerApi#Resume-EmailWarmupProgram) | **POST** /email-warmup/programs/{programId}/resume | Resume an email warmup program
[**Invoke-RetryEmailWarmupProgram**](ApiEmailWarmupControllerApi#Invoke-RetryEmailWarmupProgram) | **POST** /email-warmup/programs/{programId}/retry | Retry a system-paused email warmup program
[**Start-EmailWarmupProgram**](ApiEmailWarmupControllerApi#Start-EmailWarmupProgram) | **POST** /email-warmup/programs/{programId}/start | Start an email warmup program
[**Stop-EmailWarmupProgram**](ApiEmailWarmupControllerApi#Stop-EmailWarmupProgram) | **POST** /email-warmup/programs/{programId}/stop | Stop an email warmup program
[**Update-EmailWarmupProgram**](ApiEmailWarmupControllerApi#Update-EmailWarmupProgram) | **PUT** /email-warmup/programs/{programId} | Update a draft email warmup program
[**Update-EmailWarmupSenderSeats**](ApiEmailWarmupControllerApi#Update-EmailWarmupSenderSeats) | **PUT** /email-warmup/programs/sender-seats | Update purchased email warmup sender seats


<a name="New-EmailWarmupProgram"></a>
# **New-EmailWarmupProgram**
> EmailWarmupProgramDto New-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateEmailWarmupProgramOptions] <PSCustomObject><br>

Create an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateEmailWarmupProgramOptions = (Initialize-CreateEmailWarmupProgramOptions -Name "Name_example" -ConnectionId "ConnectionId_example" -CustomerIntent "NEW_SENDER_WARMUP" -CurrentDailyVolume 123 -GoalDailyVolume 123 -SchedulePreset "GENTLE" -RampDurationDays 123 -MaintenanceEnabled $false -MaintenanceDailyVolume 123 -SendWindowStart "SendWindowStart_example" -SendWindowEnd "SendWindowEnd_example" -TimeZone "TimeZone_example" -RequestedCoverage "AUTO" -BaselineTestId "BaselineTestId_example" -Content (Initialize-EmailWarmupContentOptions -Source "MANAGED_CONTROL" -Subject "Subject_example" -TextBody "TextBody_example" -HtmlBody "HtmlBody_example") -SenderOwnershipAttested $false -PermissionBasedSendingAttested $false) # CreateEmailWarmupProgramOptions | 

# Create an email warmup program
try {
     $Result = New-EmailWarmupProgram -CreateEmailWarmupProgramOptions $CreateEmailWarmupProgramOptions
} catch {
    Write-Host ("Exception occured when calling New-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateEmailWarmupProgramOptions** | [**CreateEmailWarmupProgramOptions**](CreateEmailWarmupProgramOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteEmailWarmupProgram"></a>
# **Invoke-DeleteEmailWarmupProgram**
> void Invoke-DeleteEmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailWarmupProgramCommandOptions] <PSCustomObject><br>

Delete an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$EmailWarmupProgramCommandOptions = (Initialize-EmailWarmupProgramCommandOptions -ExpectedVersion 123) # EmailWarmupProgramCommandOptions | 

# Delete an email warmup program
try {
     $Result = Invoke-DeleteEmailWarmupProgram -ProgramId $ProgramId -EmailWarmupProgramCommandOptions $EmailWarmupProgramCommandOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteEmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **EmailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteEmailWarmupSenderSeats"></a>
# **Invoke-DeleteEmailWarmupSenderSeats**
> EmailWarmupUsageSummaryDto Invoke-DeleteEmailWarmupSenderSeats<br>

Cancel purchased email warmup sender seats

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Cancel purchased email warmup sender seats
try {
     $Result = Invoke-DeleteEmailWarmupSenderSeats
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteEmailWarmupSenderSeats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailWarmupUsageSummaryDto**](EmailWarmupUsageSummaryDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupOverview"></a>
# **Get-EmailWarmupOverview**
> EmailWarmupOverviewDto Get-EmailWarmupOverview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Days] <System.Nullable[Int32]><br>

Get operational email warmup activity and program progress

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Days = 987 # Int32 |  (optional) (default to 30)

# Get operational email warmup activity and program progress
try {
     $Result = Get-EmailWarmupOverview -Days $Days
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupOverview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Days** | **Int32**|  | [optional] [default to 30]

### Return type

[**EmailWarmupOverviewDto**](EmailWarmupOverviewDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupPlacementChecks"></a>
# **Get-EmailWarmupPlacementChecks**
> EmailWarmupPlacementCheckDto[] Get-EmailWarmupPlacementChecks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>

List Gmail and Outlook placement checks for an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 

# List Gmail and Outlook placement checks for an email warmup program
try {
     $Result = Get-EmailWarmupPlacementChecks -ProgramId $ProgramId
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupPlacementChecks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 

### Return type

[**EmailWarmupPlacementCheckDto[]**](EmailWarmupPlacementCheckDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupProgram"></a>
# **Get-EmailWarmupProgram**
> EmailWarmupProgramDto Get-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>

Get an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 

# Get an email warmup program
try {
     $Result = Get-EmailWarmupProgram -ProgramId $ProgramId
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupProgramAnalytics"></a>
# **Get-EmailWarmupProgramAnalytics**
> EmailWarmupProgramAnalyticsDto Get-EmailWarmupProgramAnalytics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Days] <System.Nullable[Int32]><br>

Get email warmup program progress and daily activity

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$Days = 987 # Int32 |  (optional) (default to 30)

# Get email warmup program progress and daily activity
try {
     $Result = Get-EmailWarmupProgramAnalytics -ProgramId $ProgramId -Days $Days
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupProgramAnalytics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **Days** | **Int32**|  | [optional] [default to 30]

### Return type

[**EmailWarmupProgramAnalyticsDto**](EmailWarmupProgramAnalyticsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupPrograms"></a>
# **Get-EmailWarmupPrograms**
> EmailWarmupProgramPageDto Get-EmailWarmupPrograms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

List email warmup programs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)

# List email warmup programs
try {
     $Result = Get-EmailWarmupPrograms -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupPrograms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**EmailWarmupProgramPageDto**](EmailWarmupProgramPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupReadiness"></a>
# **Get-EmailWarmupReadiness**
> EmailWarmupReadinessDto Get-EmailWarmupReadiness<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>

Get warmup readiness, adaptive pacing, and sender-health signals

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 

# Get warmup readiness, adaptive pacing, and sender-health signals
try {
     $Result = Get-EmailWarmupReadiness -ProgramId $ProgramId
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupReadiness: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 

### Return type

[**EmailWarmupReadinessDto**](EmailWarmupReadinessDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupSlots"></a>
# **Get-EmailWarmupSlots**
> EmailWarmupSendSlotPageDto Get-EmailWarmupSlots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

List scheduled email warmup slots

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 50)

# List scheduled email warmup slots
try {
     $Result = Get-EmailWarmupSlots -ProgramId $ProgramId -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupSlots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 50]

### Return type

[**EmailWarmupSendSlotPageDto**](EmailWarmupSendSlotPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailWarmupUsage"></a>
# **Get-EmailWarmupUsage**
> EmailWarmupUsageSummaryDto Get-EmailWarmupUsage<br>

Get email warmup sender capacity, included credits, and billable usage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get email warmup sender capacity, included credits, and billable usage
try {
     $Result = Get-EmailWarmupUsage
} catch {
    Write-Host ("Exception occured when calling Get-EmailWarmupUsage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailWarmupUsageSummaryDto**](EmailWarmupUsageSummaryDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Suspend-EmailWarmupProgram"></a>
# **Suspend-EmailWarmupProgram**
> EmailWarmupProgramDto Suspend-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailWarmupProgramCommandOptions] <PSCustomObject><br>

Pause an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$EmailWarmupProgramCommandOptions = (Initialize-EmailWarmupProgramCommandOptions -ExpectedVersion 123) # EmailWarmupProgramCommandOptions | 

# Pause an email warmup program
try {
     $Result = Suspend-EmailWarmupProgram -ProgramId $ProgramId -EmailWarmupProgramCommandOptions $EmailWarmupProgramCommandOptions
} catch {
    Write-Host ("Exception occured when calling Suspend-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **EmailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Resume-EmailWarmupProgram"></a>
# **Resume-EmailWarmupProgram**
> EmailWarmupProgramDto Resume-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailWarmupProgramCommandOptions] <PSCustomObject><br>

Resume an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$EmailWarmupProgramCommandOptions =  # EmailWarmupProgramCommandOptions | 

# Resume an email warmup program
try {
     $Result = Resume-EmailWarmupProgram -ProgramId $ProgramId -EmailWarmupProgramCommandOptions $EmailWarmupProgramCommandOptions
} catch {
    Write-Host ("Exception occured when calling Resume-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **EmailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RetryEmailWarmupProgram"></a>
# **Invoke-RetryEmailWarmupProgram**
> EmailWarmupProgramDto Invoke-RetryEmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailWarmupProgramCommandOptions] <PSCustomObject><br>

Retry a system-paused email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$EmailWarmupProgramCommandOptions =  # EmailWarmupProgramCommandOptions | 

# Retry a system-paused email warmup program
try {
     $Result = Invoke-RetryEmailWarmupProgram -ProgramId $ProgramId -EmailWarmupProgramCommandOptions $EmailWarmupProgramCommandOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-RetryEmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **EmailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Start-EmailWarmupProgram"></a>
# **Start-EmailWarmupProgram**
> EmailWarmupProgramDto Start-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailWarmupProgramCommandOptions] <PSCustomObject><br>

Start an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$EmailWarmupProgramCommandOptions =  # EmailWarmupProgramCommandOptions | 

# Start an email warmup program
try {
     $Result = Start-EmailWarmupProgram -ProgramId $ProgramId -EmailWarmupProgramCommandOptions $EmailWarmupProgramCommandOptions
} catch {
    Write-Host ("Exception occured when calling Start-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **EmailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Stop-EmailWarmupProgram"></a>
# **Stop-EmailWarmupProgram**
> EmailWarmupProgramDto Stop-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailWarmupProgramCommandOptions] <PSCustomObject><br>

Stop an email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$EmailWarmupProgramCommandOptions =  # EmailWarmupProgramCommandOptions | 

# Stop an email warmup program
try {
     $Result = Stop-EmailWarmupProgram -ProgramId $ProgramId -EmailWarmupProgramCommandOptions $EmailWarmupProgramCommandOptions
} catch {
    Write-Host ("Exception occured when calling Stop-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **EmailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-EmailWarmupProgram"></a>
# **Update-EmailWarmupProgram**
> EmailWarmupProgramDto Update-EmailWarmupProgram<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProgramId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateEmailWarmupProgramOptions] <PSCustomObject><br>

Update a draft email warmup program

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProgramId = "ProgramId_example" # String | 
$UpdateEmailWarmupProgramOptions = (Initialize-UpdateEmailWarmupProgramOptions -ExpectedVersion 123 -Name "Name_example" -GoalDailyVolume 123 -SchedulePreset "GENTLE" -RampDurationDays 123 -MaintenanceEnabled $false -MaintenanceDailyVolume 123 -SendWindowStart "SendWindowStart_example" -SendWindowEnd "SendWindowEnd_example" -TimeZone "TimeZone_example" -Content (Initialize-EmailWarmupContentOptions -Source "MANAGED_CONTROL" -Subject "Subject_example" -TextBody "TextBody_example" -HtmlBody "HtmlBody_example")) # UpdateEmailWarmupProgramOptions | 

# Update a draft email warmup program
try {
     $Result = Update-EmailWarmupProgram -ProgramId $ProgramId -UpdateEmailWarmupProgramOptions $UpdateEmailWarmupProgramOptions
} catch {
    Write-Host ("Exception occured when calling Update-EmailWarmupProgram: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProgramId** | [**String**](String)|  | 
 **UpdateEmailWarmupProgramOptions** | [**UpdateEmailWarmupProgramOptions**](UpdateEmailWarmupProgramOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-EmailWarmupSenderSeats"></a>
# **Update-EmailWarmupSenderSeats**
> EmailWarmupUsageSummaryDto Update-EmailWarmupSenderSeats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateEmailWarmupSenderSeatsOptions] <PSCustomObject><br>

Update purchased email warmup sender seats

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UpdateEmailWarmupSenderSeatsOptions = (Initialize-UpdateEmailWarmupSenderSeatsOptions -Quantity 123) # UpdateEmailWarmupSenderSeatsOptions | 

# Update purchased email warmup sender seats
try {
     $Result = Update-EmailWarmupSenderSeats -UpdateEmailWarmupSenderSeatsOptions $UpdateEmailWarmupSenderSeatsOptions
} catch {
    Write-Host ("Exception occured when calling Update-EmailWarmupSenderSeats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateEmailWarmupSenderSeatsOptions** | [**UpdateEmailWarmupSenderSeatsOptions**](UpdateEmailWarmupSenderSeatsOptions)|  | 

### Return type

[**EmailWarmupUsageSummaryDto**](EmailWarmupUsageSummaryDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

