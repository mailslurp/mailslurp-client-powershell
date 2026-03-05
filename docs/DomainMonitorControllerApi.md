# maislurp-client-powershell.maislurp-client-powershell/Api.DomainMonitorControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-DomainMonitor**](DomainMonitorControllerApi#New-DomainMonitor) | **POST** /domain-monitor/monitors | Create domain monitor
[**New-DomainMonitorAlertSink**](DomainMonitorControllerApi#New-DomainMonitorAlertSink) | **POST** /domain-monitor/monitors/{monitorId}/alert-sinks | Create alert sink for monitor
[**Invoke-DeleteDomainMonitor**](DomainMonitorControllerApi#Invoke-DeleteDomainMonitor) | **DELETE** /domain-monitor/monitors/{monitorId} | Delete domain monitor
[**Invoke-DeleteDomainMonitorAlertSink**](DomainMonitorControllerApi#Invoke-DeleteDomainMonitorAlertSink) | **DELETE** /domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId} | Delete monitor alert sink
[**Get-DomainMonitor**](DomainMonitorControllerApi#Get-DomainMonitor) | **GET** /domain-monitor/monitors/{monitorId} | Get domain monitor
[**Get-DomainMonitorAlertSinks**](DomainMonitorControllerApi#Get-DomainMonitorAlertSinks) | **GET** /domain-monitor/monitors/{monitorId}/alert-sinks | List alert sinks for monitor
[**Get-DomainMonitorInsights**](DomainMonitorControllerApi#Get-DomainMonitorInsights) | **GET** /domain-monitor/monitors/{monitorId}/insights | Get monitor insights
[**Get-DomainMonitorRuns**](DomainMonitorControllerApi#Get-DomainMonitorRuns) | **GET** /domain-monitor/monitors/{monitorId}/runs | List monitor runs
[**Get-DomainMonitorSeries**](DomainMonitorControllerApi#Get-DomainMonitorSeries) | **GET** /domain-monitor/monitors/{monitorId}/series | Get monitor trend series
[**Get-DomainMonitors**](DomainMonitorControllerApi#Get-DomainMonitors) | **GET** /domain-monitor/monitors | List domain monitors
[**Invoke-RunDomainMonitorNow**](DomainMonitorControllerApi#Invoke-RunDomainMonitorNow) | **POST** /domain-monitor/monitors/{monitorId}/run-now | Run monitor now
[**Invoke-RunDueDomainMonitors**](DomainMonitorControllerApi#Invoke-RunDueDomainMonitors) | **POST** /domain-monitor/monitors/run-due | Run due monitors for user
[**Update-DomainMonitor**](DomainMonitorControllerApi#Update-DomainMonitor) | **PUT** /domain-monitor/monitors/{monitorId} | Update domain monitor


<a name="New-DomainMonitor"></a>
# **New-DomainMonitor**
> DomainMonitorDto New-DomainMonitor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDomainMonitorOptions] <PSCustomObject><br>

Create domain monitor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDomainMonitorOptions = (Initialize-CreateDomainMonitorOptions -Domain "Domain_example" -Name "Name_example" -IntervalSeconds 123 -Enabled $false -SchedulingEnabled $false) # CreateDomainMonitorOptions | 

# Create domain monitor
try {
     $Result = New-DomainMonitor -CreateDomainMonitorOptions $CreateDomainMonitorOptions
} catch {
    Write-Host ("Exception occured when calling New-DomainMonitor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDomainMonitorOptions** | [**CreateDomainMonitorOptions**](CreateDomainMonitorOptions)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DomainMonitorAlertSink"></a>
# **New-DomainMonitorAlertSink**
> DomainMonitorAlertSinkDto New-DomainMonitorAlertSink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDomainMonitorAlertSinkOptions] <PSCustomObject><br>

Create alert sink for monitor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 
$CreateDomainMonitorAlertSinkOptions = (Initialize-CreateDomainMonitorAlertSinkOptions -Type "EMAIL" -Target "Target_example" -SeverityThreshold "LOW" -Enabled $false) # CreateDomainMonitorAlertSinkOptions | 

# Create alert sink for monitor
try {
     $Result = New-DomainMonitorAlertSink -MonitorId $MonitorId -CreateDomainMonitorAlertSinkOptions $CreateDomainMonitorAlertSinkOptions
} catch {
    Write-Host ("Exception occured when calling New-DomainMonitorAlertSink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 
 **CreateDomainMonitorAlertSinkOptions** | [**CreateDomainMonitorAlertSinkOptions**](CreateDomainMonitorAlertSinkOptions)|  | 

### Return type

[**DomainMonitorAlertSinkDto**](DomainMonitorAlertSinkDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDomainMonitor"></a>
# **Invoke-DeleteDomainMonitor**
> void Invoke-DeleteDomainMonitor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>

Delete domain monitor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 

# Delete domain monitor
try {
     $Result = Invoke-DeleteDomainMonitor -MonitorId $MonitorId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDomainMonitor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDomainMonitorAlertSink"></a>
# **Invoke-DeleteDomainMonitorAlertSink**
> void Invoke-DeleteDomainMonitorAlertSink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SinkId] <PSCustomObject><br>

Delete monitor alert sink

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 
$SinkId = "SinkId_example" # String | 

# Delete monitor alert sink
try {
     $Result = Invoke-DeleteDomainMonitorAlertSink -MonitorId $MonitorId -SinkId $SinkId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDomainMonitorAlertSink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 
 **SinkId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitor"></a>
# **Get-DomainMonitor**
> DomainMonitorDto Get-DomainMonitor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>

Get domain monitor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 

# Get domain monitor
try {
     $Result = Get-DomainMonitor -MonitorId $MonitorId
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorAlertSinks"></a>
# **Get-DomainMonitorAlertSinks**
> DomainMonitorAlertSinkDto[] Get-DomainMonitorAlertSinks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>

List alert sinks for monitor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 

# List alert sinks for monitor
try {
     $Result = Get-DomainMonitorAlertSinks -MonitorId $MonitorId
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorAlertSinks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 

### Return type

[**DomainMonitorAlertSinkDto[]**](DomainMonitorAlertSinkDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorInsights"></a>
# **Get-DomainMonitorInsights**
> DomainMonitorInsightsDto Get-DomainMonitorInsights<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get monitor insights

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)

# Get monitor insights
try {
     $Result = Get-DomainMonitorInsights -MonitorId $MonitorId -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorInsights: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 

### Return type

[**DomainMonitorInsightsDto**](DomainMonitorInsightsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorRuns"></a>
# **Get-DomainMonitorRuns**
> DomainMonitorRunDto[] Get-DomainMonitorRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List monitor runs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Status = "HEALTHY" # String |  (optional)
$Limit = 987 # Int32 |  (optional)

# List monitor runs
try {
     $Result = Get-DomainMonitorRuns -MonitorId $MonitorId -Since $Since -Before $Before -Status $Status -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Status** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] 

### Return type

[**DomainMonitorRunDto[]**](DomainMonitorRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorSeries"></a>
# **Get-DomainMonitorSeries**
> DomainMonitorSeriesDto Get-DomainMonitorSeries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Bucket] <String><br>

Get monitor trend series

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Bucket = "HOUR" # String |  (optional) (default to "DAY")

# Get monitor trend series
try {
     $Result = Get-DomainMonitorSeries -MonitorId $MonitorId -Since $Since -Before $Before -Bucket $Bucket
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorSeries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Bucket** | **String**|  | [optional] [default to &quot;DAY&quot;]

### Return type

[**DomainMonitorSeriesDto**](DomainMonitorSeriesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitors"></a>
# **Get-DomainMonitors**
> DomainMonitorDto[] Get-DomainMonitors<br>

List domain monitors

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List domain monitors
try {
     $Result = Get-DomainMonitors
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainMonitorDto[]**](DomainMonitorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RunDomainMonitorNow"></a>
# **Invoke-RunDomainMonitorNow**
> DomainMonitorRunNowResult Invoke-RunDomainMonitorNow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>

Run monitor now

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 

# Run monitor now
try {
     $Result = Invoke-RunDomainMonitorNow -MonitorId $MonitorId
} catch {
    Write-Host ("Exception occured when calling Invoke-RunDomainMonitorNow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 

### Return type

[**DomainMonitorRunNowResult**](DomainMonitorRunNowResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RunDueDomainMonitors"></a>
# **Invoke-RunDueDomainMonitors**
> DomainMonitorRunDueResult Invoke-RunDueDomainMonitors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxRuns] <System.Nullable[Int32]><br>

Run due monitors for user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MaxRuns = 987 # Int32 |  (optional)

# Run due monitors for user
try {
     $Result = Invoke-RunDueDomainMonitors -MaxRuns $MaxRuns
} catch {
    Write-Host ("Exception occured when calling Invoke-RunDueDomainMonitors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MaxRuns** | **Int32**|  | [optional] 

### Return type

[**DomainMonitorRunDueResult**](DomainMonitorRunDueResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-DomainMonitor"></a>
# **Update-DomainMonitor**
> DomainMonitorDto Update-DomainMonitor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MonitorId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDomainMonitorOptions] <PSCustomObject><br>

Update domain monitor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MonitorId = "MonitorId_example" # String | 
$UpdateDomainMonitorOptions = (Initialize-UpdateDomainMonitorOptions -Name "Name_example" -IntervalSeconds 123 -Enabled $false -SchedulingEnabled $false) # UpdateDomainMonitorOptions | 

# Update domain monitor
try {
     $Result = Update-DomainMonitor -MonitorId $MonitorId -UpdateDomainMonitorOptions $UpdateDomainMonitorOptions
} catch {
    Write-Host ("Exception occured when calling Update-DomainMonitor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MonitorId** | [**String**](String)|  | 
 **UpdateDomainMonitorOptions** | [**UpdateDomainMonitorOptions**](UpdateDomainMonitorOptions)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

