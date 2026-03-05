# maislurp-client-powershell.maislurp-client-powershell/Api.DevicePreviewsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-DevicePreviewRun**](DevicePreviewsControllerApi#Stop-DevicePreviewRun) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**New-DevicePreviewFeedback**](DevicePreviewsControllerApi#New-DevicePreviewFeedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**New-DevicePreviewRun**](DevicePreviewsControllerApi#New-DevicePreviewRun) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**Invoke-DeleteDevicePreviewRun**](DevicePreviewsControllerApi#Invoke-DeleteDevicePreviewRun) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**Invoke-EnsureDevicePreviewRun**](DevicePreviewsControllerApi#Invoke-EnsureDevicePreviewRun) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**Get-DevicePreviewFeedback**](DevicePreviewsControllerApi#Get-DevicePreviewFeedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**Get-DevicePreviewFeedbackItems**](DevicePreviewsControllerApi#Get-DevicePreviewFeedbackItems) | **GET** /emails/device-previews/feedback | List device preview feedback
[**Get-DevicePreviewRun**](DevicePreviewsControllerApi#Get-DevicePreviewRun) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**Get-DevicePreviewRunProviderProgress**](DevicePreviewsControllerApi#Get-DevicePreviewRunProviderProgress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**Get-DevicePreviewRunResults**](DevicePreviewsControllerApi#Get-DevicePreviewRunResults) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**Get-DevicePreviewRunScreenshot**](DevicePreviewsControllerApi#Get-DevicePreviewRunScreenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a seeded device preview screenshot image
[**Get-DevicePreviewRuns**](DevicePreviewsControllerApi#Get-DevicePreviewRuns) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**Get-DevicePreviewRunsForAccount**](DevicePreviewsControllerApi#Get-DevicePreviewRunsForAccount) | **GET** /emails/device-previews | List previous device preview runs for account
[**Get-DevicePreviewRunsOffsetPaginated**](DevicePreviewsControllerApi#Get-DevicePreviewRunsOffsetPaginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**Update-DevicePreviewFeedback**](DevicePreviewsControllerApi#Update-DevicePreviewFeedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback


<a name="Stop-DevicePreviewRun"></a>
# **Stop-DevicePreviewRun**
> CancelDevicePreviewRunResult Stop-DevicePreviewRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CancelDevicePreviewRunOptions] <PSCustomObject><br>

Cancel a running device preview run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 
$CancelDevicePreviewRunOptions = (Initialize-CancelDevicePreviewRunOptions -Reason "Reason_example") # CancelDevicePreviewRunOptions |  (optional)

# Cancel a running device preview run
try {
     $Result = Stop-DevicePreviewRun -RunId $RunId -CancelDevicePreviewRunOptions $CancelDevicePreviewRunOptions
} catch {
    Write-Host ("Exception occured when calling Stop-DevicePreviewRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 
 **CancelDevicePreviewRunOptions** | [**CancelDevicePreviewRunOptions**](CancelDevicePreviewRunOptions)|  | [optional] 

### Return type

[**CancelDevicePreviewRunResult**](CancelDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewFeedback"></a>
# **New-DevicePreviewFeedback**
> DevicePreviewFeedbackDto New-DevicePreviewFeedback<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewFeedbackOptions] <PSCustomObject><br>

Create device preview feedback

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDevicePreviewFeedbackOptions = (Initialize-CreateDevicePreviewFeedbackOptions -Source "API_SERVICE" -Category "GENERAL" -Status "OPEN" -Rating 123 -RunId "RunId_example" -TargetId "TargetId_example" -ScreenshotId "ScreenshotId_example" -Provider "GMAIL" -Title "Title_example" -Comment "Comment_example" -InternalNote "InternalNote_example" -SessionId "SessionId_example" -LiveViewUrl "LiveViewUrl_example" -Metadata "TODO") # CreateDevicePreviewFeedbackOptions | 

# Create device preview feedback
try {
     $Result = New-DevicePreviewFeedback -CreateDevicePreviewFeedbackOptions $CreateDevicePreviewFeedbackOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewFeedback: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDevicePreviewFeedbackOptions** | [**CreateDevicePreviewFeedbackOptions**](CreateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewRun"></a>
# **New-DevicePreviewRun**
> CreateDevicePreviewRunResult New-DevicePreviewRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewOptions] <PSCustomObject><br>

Create a new device preview run for an email

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$CreateDevicePreviewOptions = (Initialize-CreateDevicePreviewOptions -Providers @("GMAIL") -IncludeAllConfiguredProviders $false) # CreateDevicePreviewOptions |  (optional)

# Create a new device preview run for an email
try {
     $Result = New-DevicePreviewRun -EmailId $EmailId -CreateDevicePreviewOptions $CreateDevicePreviewOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **CreateDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDevicePreviewRun"></a>
# **Invoke-DeleteDevicePreviewRun**
> DeleteDevicePreviewRunResult Invoke-DeleteDevicePreviewRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>

Delete local device preview run data

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

# Delete local device preview run data
try {
     $Result = Invoke-DeleteDevicePreviewRun -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDevicePreviewRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

[**DeleteDevicePreviewRunResult**](DeleteDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EnsureDevicePreviewRun"></a>
# **Invoke-EnsureDevicePreviewRun**
> CreateDevicePreviewRunResult Invoke-EnsureDevicePreviewRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewOptions] <PSCustomObject><br>

Return active run for email or create one when none exists

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$CreateDevicePreviewOptions = (Initialize-CreateDevicePreviewOptions -Providers @("GMAIL") -IncludeAllConfiguredProviders $false) # CreateDevicePreviewOptions |  (optional)

# Return active run for email or create one when none exists
try {
     $Result = Invoke-EnsureDevicePreviewRun -EmailId $EmailId -CreateDevicePreviewOptions $CreateDevicePreviewOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-EnsureDevicePreviewRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **CreateDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewFeedback"></a>
# **Get-DevicePreviewFeedback**
> DevicePreviewFeedbackDto Get-DevicePreviewFeedback<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeedbackId] <PSCustomObject><br>

Get a single device preview feedback item

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$FeedbackId = "FeedbackId_example" # String | 

# Get a single device preview feedback item
try {
     $Result = Get-DevicePreviewFeedback -FeedbackId $FeedbackId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewFeedback: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FeedbackId** | [**String**](String)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewFeedbackItems"></a>
# **Get-DevicePreviewFeedbackItems**
> DevicePreviewFeedbackListDto Get-DevicePreviewFeedbackItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Category] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List device preview feedback

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional)
$Size = 987 # Int32 |  (optional)
$Source = "API_SERVICE" # String |  (optional)
$RunId = "RunId_example" # String |  (optional)
$Status = "OPEN" # String |  (optional)
$Provider = "GMAIL" # String |  (optional)
$Category = "GENERAL" # String |  (optional)
$Search = "Search_example" # String |  (optional)

# List device preview feedback
try {
     $Result = Get-DevicePreviewFeedbackItems -Page $Page -Size $Size -Source $Source -RunId $RunId -Status $Status -Provider $Provider -Category $Category -Search $Search
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewFeedbackItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] 
 **Size** | **Int32**|  | [optional] 
 **Source** | **String**|  | [optional] 
 **RunId** | [**String**](String)|  | [optional] 
 **Status** | **String**|  | [optional] 
 **Provider** | **String**|  | [optional] 
 **Category** | **String**|  | [optional] 
 **Search** | **String**|  | [optional] 

### Return type

[**DevicePreviewFeedbackListDto**](DevicePreviewFeedbackListDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRun"></a>
# **Get-DevicePreviewRun**
> DevicePreviewRunDto Get-DevicePreviewRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>

Get device preview run status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

# Get device preview run status
try {
     $Result = Get-DevicePreviewRun -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

[**DevicePreviewRunDto**](DevicePreviewRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRunProviderProgress"></a>
# **Get-DevicePreviewRunProviderProgress**
> DevicePreviewProviderProgressDto Get-DevicePreviewRunProviderProgress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <String><br>

Get provider-level progress for a device preview run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 
$Provider = "GMAIL" # String | 

# Get provider-level progress for a device preview run
try {
     $Result = Get-DevicePreviewRunProviderProgress -RunId $RunId -Provider $Provider
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunProviderProgress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 
 **Provider** | **String**|  | 

### Return type

[**DevicePreviewProviderProgressDto**](DevicePreviewProviderProgressDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRunResults"></a>
# **Get-DevicePreviewRunResults**
> DevicePreviewRunResultsDto Get-DevicePreviewRunResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>

Get device preview run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

# Get device preview run results
try {
     $Result = Get-DevicePreviewRunResults -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

[**DevicePreviewRunResultsDto**](DevicePreviewRunResultsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRunScreenshot"></a>
# **Get-DevicePreviewRunScreenshot**
> SystemByte Get-DevicePreviewRunScreenshot<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenshotId] <PSCustomObject><br>

Get a seeded device preview screenshot image

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 
$ScreenshotId = "ScreenshotId_example" # String | 

# Get a seeded device preview screenshot image
try {
     $Result = Get-DevicePreviewRunScreenshot -RunId $RunId -ScreenshotId $ScreenshotId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunScreenshot: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 
 **ScreenshotId** | [**String**](String)|  | 

### Return type

[**SystemByte**](SystemByte) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRuns"></a>
# **Get-DevicePreviewRuns**
> DevicePreviewRunDto[] Get-DevicePreviewRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List previous device preview runs for an email

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$Limit = 987 # Int32 |  (optional) (default to 50)

# List previous device preview runs for an email
try {
     $Result = Get-DevicePreviewRuns -EmailId $EmailId -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **Limit** | **Int32**|  | [optional] [default to 50]

### Return type

[**DevicePreviewRunDto[]**](DevicePreviewRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRunsForAccount"></a>
# **Get-DevicePreviewRunsForAccount**
> DevicePreviewRunDto[] Get-DevicePreviewRunsForAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List previous device preview runs for account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Limit = 987 # Int32 |  (optional) (default to 50)

# List previous device preview runs for account
try {
     $Result = Get-DevicePreviewRunsForAccount -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunsForAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**|  | [optional] [default to 50]

### Return type

[**DevicePreviewRunDto[]**](DevicePreviewRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRunsOffsetPaginated"></a>
# **Get-DevicePreviewRunsOffsetPaginated**
> PageDevicePreviewRunProjection Get-DevicePreviewRunsOffsetPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List previous device preview runs for an email in paginated form

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")

# List previous device preview runs for an email in paginated form
try {
     $Result = Get-DevicePreviewRunsOffsetPaginated -EmailId $EmailId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunsOffsetPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-DevicePreviewFeedback"></a>
# **Update-DevicePreviewFeedback**
> DevicePreviewFeedbackDto Update-DevicePreviewFeedback<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeedbackId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDevicePreviewFeedbackOptions] <PSCustomObject><br>

Update device preview feedback

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$FeedbackId = "FeedbackId_example" # String | 
$UpdateDevicePreviewFeedbackOptions = (Initialize-UpdateDevicePreviewFeedbackOptions -Status "OPEN" -Rating 123 -Title "Title_example" -Comment "Comment_example" -InternalNote "InternalNote_example" -AppendInternalNote $false -SessionId "SessionId_example" -LiveViewUrl "LiveViewUrl_example" -Metadata "TODO") # UpdateDevicePreviewFeedbackOptions | 

# Update device preview feedback
try {
     $Result = Update-DevicePreviewFeedback -FeedbackId $FeedbackId -UpdateDevicePreviewFeedbackOptions $UpdateDevicePreviewFeedbackOptions
} catch {
    Write-Host ("Exception occured when calling Update-DevicePreviewFeedback: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FeedbackId** | [**String**](String)|  | 
 **UpdateDevicePreviewFeedbackOptions** | [**UpdateDevicePreviewFeedbackOptions**](UpdateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

