# maislurp-client-powershell.maislurp-client-powershell/Api.CampaignProbeControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CampaignProbe**](CampaignProbeControllerApi#New-CampaignProbe) | **POST** /campaign-probe/probes | Create campaign probe
[**Invoke-DeleteCampaignProbe**](CampaignProbeControllerApi#Invoke-DeleteCampaignProbe) | **DELETE** /campaign-probe/probes/{probeId} | Delete campaign probe
[**Get-CampaignProbe**](CampaignProbeControllerApi#Get-CampaignProbe) | **GET** /campaign-probe/probes/{probeId} | Get campaign probe
[**Get-CampaignProbeInsights**](CampaignProbeControllerApi#Get-CampaignProbeInsights) | **GET** /campaign-probe/probes/{probeId}/insights | Get campaign probe insights
[**Get-CampaignProbeRuns**](CampaignProbeControllerApi#Get-CampaignProbeRuns) | **GET** /campaign-probe/probes/{probeId}/runs | List campaign probe runs
[**Get-CampaignProbeSeries**](CampaignProbeControllerApi#Get-CampaignProbeSeries) | **GET** /campaign-probe/probes/{probeId}/series | Get campaign probe trend series
[**Get-CampaignProbes**](CampaignProbeControllerApi#Get-CampaignProbes) | **GET** /campaign-probe/probes | List campaign probes
[**Invoke-RunCampaignProbeNow**](CampaignProbeControllerApi#Invoke-RunCampaignProbeNow) | **POST** /campaign-probe/probes/{probeId}/run-now | Run campaign probe now
[**Invoke-RunDueCampaignProbes**](CampaignProbeControllerApi#Invoke-RunDueCampaignProbes) | **POST** /campaign-probe/probes/run-due | Run due campaign probes for user
[**Update-CampaignProbe**](CampaignProbeControllerApi#Update-CampaignProbe) | **PUT** /campaign-probe/probes/{probeId} | Update campaign probe


<a name="New-CampaignProbe"></a>
# **New-CampaignProbe**
> CampaignProbeDto New-CampaignProbe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateCampaignProbeOptions] <PSCustomObject><br>

Create campaign probe

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateCampaignProbeOptions = (Initialize-CreateCampaignProbeOptions -Name "Name_example" -Enabled $true -IntervalSeconds 123 -SchedulingEnabled $true) # CreateCampaignProbeOptions | 

# Create campaign probe
try {
     $Result = New-CampaignProbe -CreateCampaignProbeOptions $CreateCampaignProbeOptions
} catch {
    Write-Host ("Exception occured when calling New-CampaignProbe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateCampaignProbeOptions** | [**CreateCampaignProbeOptions**](CreateCampaignProbeOptions)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteCampaignProbe"></a>
# **Invoke-DeleteCampaignProbe**
> void Invoke-DeleteCampaignProbe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>

Delete campaign probe

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 

# Delete campaign probe
try {
     $Result = Invoke-DeleteCampaignProbe -ProbeId $ProbeId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteCampaignProbe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-CampaignProbe"></a>
# **Get-CampaignProbe**
> CampaignProbeDto Get-CampaignProbe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>

Get campaign probe

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 

# Get campaign probe
try {
     $Result = Get-CampaignProbe -ProbeId $ProbeId
} catch {
    Write-Host ("Exception occured when calling Get-CampaignProbe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-CampaignProbeInsights"></a>
# **Get-CampaignProbeInsights**
> CampaignProbeInsightsDto Get-CampaignProbeInsights<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get campaign probe insights

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)

# Get campaign probe insights
try {
     $Result = Get-CampaignProbeInsights -ProbeId $ProbeId -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-CampaignProbeInsights: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 

### Return type

[**CampaignProbeInsightsDto**](CampaignProbeInsightsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-CampaignProbeRuns"></a>
# **Get-CampaignProbeRuns**
> CampaignProbeRunDto[] Get-CampaignProbeRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List campaign probe runs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Status = "HEALTHY" # String |  (optional)
$Limit = 987 # Int32 |  (optional)

# List campaign probe runs
try {
     $Result = Get-CampaignProbeRuns -ProbeId $ProbeId -Since $Since -Before $Before -Status $Status -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-CampaignProbeRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Status** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] 

### Return type

[**CampaignProbeRunDto[]**](CampaignProbeRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-CampaignProbeSeries"></a>
# **Get-CampaignProbeSeries**
> CampaignProbeSeriesDto Get-CampaignProbeSeries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Bucket] <String><br>

Get campaign probe trend series

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Bucket = "HOUR" # String |  (optional) (default to "DAY")

# Get campaign probe trend series
try {
     $Result = Get-CampaignProbeSeries -ProbeId $ProbeId -Since $Since -Before $Before -Bucket $Bucket
} catch {
    Write-Host ("Exception occured when calling Get-CampaignProbeSeries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Bucket** | **String**|  | [optional] [default to &quot;DAY&quot;]

### Return type

[**CampaignProbeSeriesDto**](CampaignProbeSeriesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-CampaignProbes"></a>
# **Get-CampaignProbes**
> CampaignProbeDto[] Get-CampaignProbes<br>

List campaign probes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List campaign probes
try {
     $Result = Get-CampaignProbes
} catch {
    Write-Host ("Exception occured when calling Get-CampaignProbes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CampaignProbeDto[]**](CampaignProbeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RunCampaignProbeNow"></a>
# **Invoke-RunCampaignProbeNow**
> CampaignProbeRunNowResult Invoke-RunCampaignProbeNow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateCampaignProbeRunOptions] <PSCustomObject><br>

Run campaign probe now

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 
$CreateCampaignProbeRunOptions = (Initialize-CreateCampaignProbeRunOptions -FromAddress "FromAddress_example" -Subject "Subject_example" -Recipient "Recipient_example" -MessageId "MessageId_example" -HtmlBody "HtmlBody_example" -TextBody "TextBody_example") # CreateCampaignProbeRunOptions | 

# Run campaign probe now
try {
     $Result = Invoke-RunCampaignProbeNow -ProbeId $ProbeId -CreateCampaignProbeRunOptions $CreateCampaignProbeRunOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-RunCampaignProbeNow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 
 **CreateCampaignProbeRunOptions** | [**CreateCampaignProbeRunOptions**](CreateCampaignProbeRunOptions)|  | 

### Return type

[**CampaignProbeRunNowResult**](CampaignProbeRunNowResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RunDueCampaignProbes"></a>
# **Invoke-RunDueCampaignProbes**
> CampaignProbeRunDueResult Invoke-RunDueCampaignProbes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxRuns] <System.Nullable[Int32]><br>

Run due campaign probes for user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MaxRuns = 987 # Int32 |  (optional)

# Run due campaign probes for user
try {
     $Result = Invoke-RunDueCampaignProbes -MaxRuns $MaxRuns
} catch {
    Write-Host ("Exception occured when calling Invoke-RunDueCampaignProbes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MaxRuns** | **Int32**|  | [optional] 

### Return type

[**CampaignProbeRunDueResult**](CampaignProbeRunDueResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-CampaignProbe"></a>
# **Update-CampaignProbe**
> CampaignProbeDto Update-CampaignProbe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProbeId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateCampaignProbeOptions] <PSCustomObject><br>

Update campaign probe

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProbeId = "ProbeId_example" # String | 
$UpdateCampaignProbeOptions = (Initialize-UpdateCampaignProbeOptions -Name "Name_example" -Enabled $false -IntervalSeconds 123 -SchedulingEnabled $false) # UpdateCampaignProbeOptions | 

# Update campaign probe
try {
     $Result = Update-CampaignProbe -ProbeId $ProbeId -UpdateCampaignProbeOptions $UpdateCampaignProbeOptions
} catch {
    Write-Host ("Exception occured when calling Update-CampaignProbe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProbeId** | [**String**](String)|  | 
 **UpdateCampaignProbeOptions** | [**UpdateCampaignProbeOptions**](UpdateCampaignProbeOptions)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

