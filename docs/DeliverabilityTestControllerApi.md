# maislurp-client-powershell.maislurp-client-powershell/Api.DeliverabilityTestControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-DeliverabilitySimulationJob**](DeliverabilityTestControllerApi#Stop-DeliverabilitySimulationJob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/cancel | Cancel deliverability simulation job
[**New-DeliverabilitySimulationJob**](DeliverabilityTestControllerApi#New-DeliverabilitySimulationJob) | **POST** /test/deliverability/{testId}/simulation-jobs | Create deliverability simulation job
[**New-DeliverabilityTest**](DeliverabilityTestControllerApi#New-DeliverabilityTest) | **POST** /test/deliverability | Create deliverability/load test
[**Invoke-DeleteDeliverabilityTest**](DeliverabilityTestControllerApi#Invoke-DeleteDeliverabilityTest) | **DELETE** /test/deliverability/{testId} | Delete deliverability/load test
[**Copy-DeliverabilityTest**](DeliverabilityTestControllerApi#Copy-DeliverabilityTest) | **POST** /test/deliverability/{testId}/duplicate | Duplicate deliverability/load test
[**Export-DeliverabilityTestReport**](DeliverabilityTestControllerApi#Export-DeliverabilityTestReport) | **GET** /test/deliverability/{testId}/report/export | Export deliverability/load test report as PDF
[**Export-DeliverabilityTestResults**](DeliverabilityTestControllerApi#Export-DeliverabilityTestResults) | **GET** /test/deliverability/{testId}/results/export | Export deliverability/load test entity results as CSV
[**Get-DeliverabilityAnalyticsSeries**](DeliverabilityTestControllerApi#Get-DeliverabilityAnalyticsSeries) | **GET** /test/deliverability/analytics/series | Get deliverability analytics time series
[**Get-DeliverabilityFailureHotspots**](DeliverabilityTestControllerApi#Get-DeliverabilityFailureHotspots) | **GET** /test/deliverability/analytics/hotspots | Get deliverability failure hotspots
[**Get-DeliverabilitySimulationJob**](DeliverabilityTestControllerApi#Get-DeliverabilitySimulationJob) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId} | Get deliverability simulation job
[**Get-DeliverabilitySimulationJobEvents**](DeliverabilityTestControllerApi#Get-DeliverabilitySimulationJobEvents) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId}/events | Get deliverability simulation job events
[**Get-DeliverabilityTest**](DeliverabilityTestControllerApi#Get-DeliverabilityTest) | **GET** /test/deliverability/{testId} | Get deliverability/load test
[**Get-DeliverabilityTestResults**](DeliverabilityTestControllerApi#Get-DeliverabilityTestResults) | **GET** /test/deliverability/{testId}/results | Get deliverability/load test entity results
[**Get-DeliverabilityTests**](DeliverabilityTestControllerApi#Get-DeliverabilityTests) | **GET** /test/deliverability | List deliverability/load tests
[**Get-LatestDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#Get-LatestDeliverabilitySimulationJob) | **GET** /test/deliverability/{testId}/simulation-jobs/latest | Get latest deliverability simulation job
[**Suspend-DeliverabilitySimulationJob**](DeliverabilityTestControllerApi#Suspend-DeliverabilitySimulationJob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/pause | Pause deliverability simulation job
[**Suspend-DeliverabilityTest**](DeliverabilityTestControllerApi#Suspend-DeliverabilityTest) | **POST** /test/deliverability/{testId}/pause | Pause deliverability/load test
[**Invoke-PollDeliverabilityTestStatus**](DeliverabilityTestControllerApi#Invoke-PollDeliverabilityTestStatus) | **GET** /test/deliverability/{testId}/status | Poll deliverability/load test status
[**Resume-DeliverabilitySimulationJob**](DeliverabilityTestControllerApi#Resume-DeliverabilitySimulationJob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/resume | Resume deliverability simulation job
[**Start-DeliverabilityTest**](DeliverabilityTestControllerApi#Start-DeliverabilityTest) | **POST** /test/deliverability/{testId}/start | Start or resume deliverability/load test
[**Stop-DeliverabilityTest**](DeliverabilityTestControllerApi#Stop-DeliverabilityTest) | **POST** /test/deliverability/{testId}/stop | Stop deliverability/load test
[**Update-DeliverabilityTest**](DeliverabilityTestControllerApi#Update-DeliverabilityTest) | **PATCH** /test/deliverability/{testId} | Update deliverability/load test


<a name="Stop-DeliverabilitySimulationJob"></a>
# **Stop-DeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto Stop-DeliverabilitySimulationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Cancel deliverability simulation job

Cancel a running or paused simulation job.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$JobId = "JobId_example" # String | 

# Cancel deliverability simulation job
try {
     $Result = Stop-DeliverabilitySimulationJob -TestId $TestId -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Stop-DeliverabilitySimulationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **JobId** | [**String**](String)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DeliverabilitySimulationJob"></a>
# **New-DeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto New-DeliverabilitySimulationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDeliverabilitySimulationJobOptions] <PSCustomObject><br>

Create deliverability simulation job

Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$CreateDeliverabilitySimulationJobOptions = (Initialize-CreateDeliverabilitySimulationJobOptions -SenderInboxId "SenderInboxId_example" -SenderPhoneId "SenderPhoneId_example" -Email (Initialize-DeliverabilitySimulationEmailOptions -FromOverride "FromOverride_example" -Subject "Subject_example" -BodyTemplate "BodyTemplate_example") -Sms (Initialize-DeliverabilitySimulationSmsOptions -BodyTemplate "BodyTemplate_example") -DelayMs 123 -BatchSize 123 -SendsPerTarget 123) # CreateDeliverabilitySimulationJobOptions | 

# Create deliverability simulation job
try {
     $Result = New-DeliverabilitySimulationJob -TestId $TestId -CreateDeliverabilitySimulationJobOptions $CreateDeliverabilitySimulationJobOptions
} catch {
    Write-Host ("Exception occured when calling New-DeliverabilitySimulationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **CreateDeliverabilitySimulationJobOptions** | [**CreateDeliverabilitySimulationJobOptions**](CreateDeliverabilitySimulationJobOptions)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DeliverabilityTest"></a>
# **New-DeliverabilityTest**
> DeliverabilityTestDto New-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDeliverabilityTestOptions] <PSCustomObject><br>

Create deliverability/load test

Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDeliverabilityTestOptions = (Initialize-CreateDeliverabilityTestOptions -Name "Name_example" -Description "Description_example" -Scope "INBOX" -StartAt Get-Date -MaxDurationSeconds 123 -SuccessThresholdPercent 123 -Selector (Initialize-DeliverabilitySelectorOptions -Type "ALL" -Pattern "Pattern_example" -PhoneCountry "US" -EntityIds @("EntityIds_example") -ExcludeEntityIds @("ExcludeEntityIds_example")) -Expectations @((Initialize-DeliverabilityExpectation -Name "Name_example" -MinCount 123 -VarFrom "VarFrom_example" -To "To_example" -Subject "Subject_example"))) # CreateDeliverabilityTestOptions | 

# Create deliverability/load test
try {
     $Result = New-DeliverabilityTest -CreateDeliverabilityTestOptions $CreateDeliverabilityTestOptions
} catch {
    Write-Host ("Exception occured when calling New-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDeliverabilityTestOptions** | [**CreateDeliverabilityTestOptions**](CreateDeliverabilityTestOptions)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDeliverabilityTest"></a>
# **Invoke-DeleteDeliverabilityTest**
> DeleteResult Invoke-DeleteDeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Delete deliverability/load test

Delete test and all persisted entity-level results.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Delete deliverability/load test
try {
     $Result = Invoke-DeleteDeliverabilityTest -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeleteResult**](DeleteResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Copy-DeliverabilityTest"></a>
# **Copy-DeliverabilityTest**
> DeliverabilityTestDto Copy-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Duplicate deliverability/load test

Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Duplicate deliverability/load test
try {
     $Result = Copy-DeliverabilityTest -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Copy-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Export-DeliverabilityTestReport"></a>
# **Export-DeliverabilityTestReport**
> void Export-DeliverabilityTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Export deliverability/load test report as PDF

Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Export deliverability/load test report as PDF
try {
     $Result = Export-DeliverabilityTestReport -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Export-DeliverabilityTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Export-DeliverabilityTestResults"></a>
# **Export-DeliverabilityTestResults**
> void Export-DeliverabilityTestResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Matched] <System.Nullable[Boolean]><br>

Export deliverability/load test entity results as CSV

Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$Matched = true # Boolean |  (optional)

# Export deliverability/load test entity results as CSV
try {
     $Result = Export-DeliverabilityTestResults -TestId $TestId -Matched $Matched
} catch {
    Write-Host ("Exception occured when calling Export-DeliverabilityTestResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **Matched** | **Boolean**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilityAnalyticsSeries"></a>
# **Get-DeliverabilityAnalyticsSeries**
> DeliverabilityAnalyticsSeriesDto Get-DeliverabilityAnalyticsSeries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scope] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Bucket] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunLimit] <System.Nullable[Int32]><br>

Get deliverability analytics time series

Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Scope = "INBOX" # String |  (optional)
$Bucket = "HOUR" # String |  (optional) (default to "DAY")
$RunLimit = 987 # Int32 |  (optional)

# Get deliverability analytics time series
try {
     $Result = Get-DeliverabilityAnalyticsSeries -Since $Since -Before $Before -Scope $Scope -Bucket $Bucket -RunLimit $RunLimit
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilityAnalyticsSeries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Scope** | **String**|  | [optional] 
 **Bucket** | **String**|  | [optional] [default to &quot;DAY&quot;]
 **RunLimit** | **Int32**|  | [optional] 

### Return type

[**DeliverabilityAnalyticsSeriesDto**](DeliverabilityAnalyticsSeriesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilityFailureHotspots"></a>
# **Get-DeliverabilityFailureHotspots**
> DeliverabilityFailureHotspotsDto Get-DeliverabilityFailureHotspots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scope] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get deliverability failure hotspots

Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Scope = "INBOX" # String |  (optional)
$Limit = 987 # Int32 |  (optional)

# Get deliverability failure hotspots
try {
     $Result = Get-DeliverabilityFailureHotspots -Since $Since -Before $Before -Scope $Scope -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilityFailureHotspots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Scope** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] 

### Return type

[**DeliverabilityFailureHotspotsDto**](DeliverabilityFailureHotspotsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilitySimulationJob"></a>
# **Get-DeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto Get-DeliverabilitySimulationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Get deliverability simulation job

Get simulation job status and progress counters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$JobId = "JobId_example" # String | 

# Get deliverability simulation job
try {
     $Result = Get-DeliverabilitySimulationJob -TestId $TestId -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilitySimulationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **JobId** | [**String**](String)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilitySimulationJobEvents"></a>
# **Get-DeliverabilitySimulationJobEvents**
> DeliverabilitySimulationJobEventPageDto Get-DeliverabilitySimulationJobEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get deliverability simulation job events

Get paged simulation events including send successes and failures.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$JobId = "JobId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")

# Get deliverability simulation job events
try {
     $Result = Get-DeliverabilitySimulationJobEvents -TestId $TestId -JobId $JobId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilitySimulationJobEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **JobId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]

### Return type

[**DeliverabilitySimulationJobEventPageDto**](DeliverabilitySimulationJobEventPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilityTest"></a>
# **Get-DeliverabilityTest**
> DeliverabilityTestDto Get-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Get deliverability/load test

Get deliverability test configuration and latest progress counters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Get deliverability/load test
try {
     $Result = Get-DeliverabilityTest -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilityTestResults"></a>
# **Get-DeliverabilityTestResults**
> DeliverabilityEntityResultPageDto Get-DeliverabilityTestResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Matched] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get deliverability/load test entity results

Get paged per-entity expectation results with optional matched/unmatched filtering.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$Matched = true # Boolean |  (optional)
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "ASC")

# Get deliverability/load test entity results
try {
     $Result = Get-DeliverabilityTestResults -TestId $TestId -Matched $Matched -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilityTestResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **Matched** | **Boolean**|  | [optional] 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;ASC&quot;]

### Return type

[**DeliverabilityEntityResultPageDto**](DeliverabilityEntityResultPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverabilityTests"></a>
# **Get-DeliverabilityTests**
> DeliverabilityTestPageDto Get-DeliverabilityTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List deliverability/load tests

List deliverability tests for the authenticated account.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Page index (optional) (default to 0)
$Size = 987 # Int32 | Page size (optional) (default to 20)
$Sort = "ASC" # String | Sort direction (optional) (default to "DESC")

# List deliverability/load tests
try {
     $Result = Get-DeliverabilityTests -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-DeliverabilityTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Page index | [optional] [default to 0]
 **Size** | **Int32**| Page size | [optional] [default to 20]
 **Sort** | **String**| Sort direction | [optional] [default to &quot;DESC&quot;]

### Return type

[**DeliverabilityTestPageDto**](DeliverabilityTestPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-LatestDeliverabilitySimulationJob"></a>
# **Get-LatestDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto Get-LatestDeliverabilitySimulationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Get latest deliverability simulation job

Get the most recent simulation job for a deliverability test.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Get latest deliverability simulation job
try {
     $Result = Get-LatestDeliverabilitySimulationJob -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Get-LatestDeliverabilitySimulationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Suspend-DeliverabilitySimulationJob"></a>
# **Suspend-DeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto Suspend-DeliverabilitySimulationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Pause deliverability simulation job

Pause a running simulation job.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$JobId = "JobId_example" # String | 

# Pause deliverability simulation job
try {
     $Result = Suspend-DeliverabilitySimulationJob -TestId $TestId -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Suspend-DeliverabilitySimulationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **JobId** | [**String**](String)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Suspend-DeliverabilityTest"></a>
# **Suspend-DeliverabilityTest**
> DeliverabilityTestDto Suspend-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Pause deliverability/load test

Pause a RUNNING or SCHEDULED deliverability test.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Pause deliverability/load test
try {
     $Result = Suspend-DeliverabilityTest -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Suspend-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-PollDeliverabilityTestStatus"></a>
# **Invoke-PollDeliverabilityTestStatus**
> DeliverabilityPollStatusResultDto Invoke-PollDeliverabilityTestStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Poll deliverability/load test status

Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Poll deliverability/load test status
try {
     $Result = Invoke-PollDeliverabilityTestStatus -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Invoke-PollDeliverabilityTestStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilityPollStatusResultDto**](DeliverabilityPollStatusResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Resume-DeliverabilitySimulationJob"></a>
# **Resume-DeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto Resume-DeliverabilitySimulationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Resume deliverability simulation job

Resume a paused simulation job.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$JobId = "JobId_example" # String | 

# Resume deliverability simulation job
try {
     $Result = Resume-DeliverabilitySimulationJob -TestId $TestId -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Resume-DeliverabilitySimulationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **JobId** | [**String**](String)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Start-DeliverabilityTest"></a>
# **Start-DeliverabilityTest**
> DeliverabilityTestDto Start-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Start or resume deliverability/load test

Start a CREATED test or resume a PAUSED/SCHEDULED test.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Start or resume deliverability/load test
try {
     $Result = Start-DeliverabilityTest -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Start-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Stop-DeliverabilityTest"></a>
# **Stop-DeliverabilityTest**
> DeliverabilityTestDto Stop-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>

Stop deliverability/load test

Stop a deliverability test and mark it terminal.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 

# Stop deliverability/load test
try {
     $Result = Stop-DeliverabilityTest -TestId $TestId
} catch {
    Write-Host ("Exception occured when calling Stop-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-DeliverabilityTest"></a>
# **Update-DeliverabilityTest**
> DeliverabilityTestDto Update-DeliverabilityTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDeliverabilityTestOptions] <PSCustomObject><br>

Update deliverability/load test

Update metadata, timeout, and expectations for a non-running non-terminal test.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestId = "TestId_example" # String | 
$UpdateDeliverabilityTestOptions = (Initialize-UpdateDeliverabilityTestOptions -Name "Name_example" -Description "Description_example" -StartAt Get-Date -MaxDurationSeconds 123 -ClearMaxDuration $false -SuccessThresholdPercent 123 -ClearSuccessThreshold $false -Expectations @((Initialize-DeliverabilityExpectation -Name "Name_example" -MinCount 123 -VarFrom "VarFrom_example" -To "To_example" -Subject "Subject_example"))) # UpdateDeliverabilityTestOptions | 

# Update deliverability/load test
try {
     $Result = Update-DeliverabilityTest -TestId $TestId -UpdateDeliverabilityTestOptions $UpdateDeliverabilityTestOptions
} catch {
    Write-Host ("Exception occured when calling Update-DeliverabilityTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | [**String**](String)|  | 
 **UpdateDeliverabilityTestOptions** | [**UpdateDeliverabilityTestOptions**](UpdateDeliverabilityTestOptions)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

