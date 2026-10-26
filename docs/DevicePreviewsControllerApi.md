# maislurp-client-powershell.maislurp-client-powershell/Api.DevicePreviewsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-DevicePreviewRun**](DevicePreviewsControllerApi#Stop-DevicePreviewRun) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**New-DevicePreviewFeedback**](DevicePreviewsControllerApi#New-DevicePreviewFeedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**New-DevicePreviewFolder**](DevicePreviewsControllerApi#New-DevicePreviewFolder) | **POST** /emails/device-previews/folders | Create a device preview folder
[**New-DevicePreviewImportAddress**](DevicePreviewsControllerApi#New-DevicePreviewImportAddress) | **POST** /emails/device-previews/import-addresses | Create a temporary email address for device preview import
[**New-DevicePreviewProfile**](DevicePreviewsControllerApi#New-DevicePreviewProfile) | **POST** /emails/device-previews/profiles | Create a device preview profile
[**New-DevicePreviewRun**](DevicePreviewsControllerApi#New-DevicePreviewRun) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**New-DevicePreviewRunFromFile**](DevicePreviewsControllerApi#New-DevicePreviewRunFromFile) | **POST** /emails/device-previews/import/file | Create a device preview run from an HTML, EML, or ZIP file
[**New-DevicePreviewRunFromHtmlImport**](DevicePreviewsControllerApi#New-DevicePreviewRunFromHtmlImport) | **POST** /emails/device-previews/import/html | Create a device preview run from HTML
[**New-DevicePreviewRunFromImport**](DevicePreviewsControllerApi#New-DevicePreviewRunFromImport) | **POST** /emails/device-previews/import | Create a device preview run from imported raw MIME
[**New-DevicePreviewRunFromMultipartImport**](DevicePreviewsControllerApi#New-DevicePreviewRunFromMultipartImport) | **POST** /emails/device-previews/import/multipart | Create a device preview run from multipart EML upload
[**New-DevicePreviewRunFromRawImport**](DevicePreviewsControllerApi#New-DevicePreviewRunFromRawImport) | **POST** /emails/device-previews/import/raw | Create a device preview run from raw MIME bytes
[**New-DevicePreviewShareLink**](DevicePreviewsControllerApi#New-DevicePreviewShareLink) | **POST** /emails/device-previews/{runId}/share-links | Create a share link for a device preview run
[**Invoke-DeleteDevicePreviewFolder**](DevicePreviewsControllerApi#Invoke-DeleteDevicePreviewFolder) | **DELETE** /emails/device-previews/folders/{folderId} | Delete a folder, preserving renders and child folders
[**Invoke-DeleteDevicePreviewProfile**](DevicePreviewsControllerApi#Invoke-DeleteDevicePreviewProfile) | **DELETE** /emails/device-previews/profiles/{profileId} | Delete a device preview profile
[**Invoke-DeleteDevicePreviewRun**](DevicePreviewsControllerApi#Invoke-DeleteDevicePreviewRun) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**Invoke-DeleteDevicePreviewShareLink**](DevicePreviewsControllerApi#Invoke-DeleteDevicePreviewShareLink) | **DELETE** /emails/device-previews/share-links/{shareLinkId} | Revoke a device preview share link
[**Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail**](DevicePreviewsControllerApi#Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail) | **GET** /emails/device-previews/email-submissions/{submissionId}/source-email/raw | Download the original RFC822 email for a device preview submission
[**Invoke-DownloadDevicePreviewRunSourceEmail**](DevicePreviewsControllerApi#Invoke-DownloadDevicePreviewRunSourceEmail) | **GET** /emails/device-previews/{runId}/source-email/raw | Download the original RFC822 email for a device preview run
[**Invoke-EnsureDevicePreviewRun**](DevicePreviewsControllerApi#Invoke-EnsureDevicePreviewRun) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**Get-DevicePreviewEmailDomainOrCreate**](DevicePreviewsControllerApi#Get-DevicePreviewEmailDomainOrCreate) | **PUT** /emails/device-previews/email-domain | Return account device preview email domain setup or create one
[**Get-DevicePreviewEmailRuns**](DevicePreviewsControllerApi#Get-DevicePreviewEmailRuns) | **GET** /emails/device-previews/email-runs | List device preview runs created from account email domains
[**Get-DevicePreviewEmailSubmissionSourceEmail**](DevicePreviewsControllerApi#Get-DevicePreviewEmailSubmissionSourceEmail) | **GET** /emails/device-previews/email-submissions/{submissionId}/source-email | Get the original email content for a device preview submission
[**Get-DevicePreviewEmailSubmissions**](DevicePreviewsControllerApi#Get-DevicePreviewEmailSubmissions) | **GET** /emails/device-previews/email-submissions | List received device preview email submissions
[**Get-DevicePreviewFeedback**](DevicePreviewsControllerApi#Get-DevicePreviewFeedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**Get-DevicePreviewFeedbackItems**](DevicePreviewsControllerApi#Get-DevicePreviewFeedbackItems) | **GET** /emails/device-previews/feedback | List device preview feedback
[**Get-DevicePreviewFolder**](DevicePreviewsControllerApi#Get-DevicePreviewFolder) | **GET** /emails/device-previews/folders/{folderId} | Get a device preview folder
[**Get-DevicePreviewFolders**](DevicePreviewsControllerApi#Get-DevicePreviewFolders) | **GET** /emails/device-previews/folders | List device preview folders
[**Get-DevicePreviewImportAddress**](DevicePreviewsControllerApi#Get-DevicePreviewImportAddress) | **GET** /emails/device-previews/import-addresses/{sessionId} | Get temporary device preview import address status
[**Get-DevicePreviewNativeTargetAvailability**](DevicePreviewsControllerApi#Get-DevicePreviewNativeTargetAvailability) | **GET** /emails/device-previews/native-targets/availability | Get native device preview target availability
[**Get-DevicePreviewProfile**](DevicePreviewsControllerApi#Get-DevicePreviewProfile) | **GET** /emails/device-previews/profiles/{profileId} | Get a device preview profile
[**Get-DevicePreviewProfiles**](DevicePreviewsControllerApi#Get-DevicePreviewProfiles) | **GET** /emails/device-previews/profiles | List device preview profiles
[**Get-DevicePreviewRun**](DevicePreviewsControllerApi#Get-DevicePreviewRun) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**Get-DevicePreviewRunProviderProgress**](DevicePreviewsControllerApi#Get-DevicePreviewRunProviderProgress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**Get-DevicePreviewRunResults**](DevicePreviewsControllerApi#Get-DevicePreviewRunResults) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**Get-DevicePreviewRunScreenshot**](DevicePreviewsControllerApi#Get-DevicePreviewRunScreenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a device preview screenshot image
[**Get-DevicePreviewRunSourceEmail**](DevicePreviewsControllerApi#Get-DevicePreviewRunSourceEmail) | **GET** /emails/device-previews/{runId}/source-email | Get the original email content for a device preview run
[**Get-DevicePreviewRuns**](DevicePreviewsControllerApi#Get-DevicePreviewRuns) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**Get-DevicePreviewRunsForAccount**](DevicePreviewsControllerApi#Get-DevicePreviewRunsForAccount) | **GET** /emails/device-previews | List previous device preview runs for account
[**Get-DevicePreviewRunsForAccountOffsetPaginated**](DevicePreviewsControllerApi#Get-DevicePreviewRunsForAccountOffsetPaginated) | **GET** /emails/device-previews/offset-paginated | List previous device preview runs for account in paginated form
[**Get-DevicePreviewRunsOffsetPaginated**](DevicePreviewsControllerApi#Get-DevicePreviewRunsOffsetPaginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**Get-DevicePreviewShareLinks**](DevicePreviewsControllerApi#Get-DevicePreviewShareLinks) | **GET** /emails/device-previews/{runId}/share-links | List share links for a device preview run
[**Get-DevicePreviewSharedResult**](DevicePreviewsControllerApi#Get-DevicePreviewSharedResult) | **GET** /emails/device-previews/share/{shareToken} | Get a public shared device preview result
[**Get-DevicePreviewSharedResultScreenshot**](DevicePreviewsControllerApi#Get-DevicePreviewSharedResultScreenshot) | **GET** /emails/device-previews/share/{shareToken}/screenshots/{screenshotId}/image | Get a public shared device preview screenshot image
[**Get-DevicePreviewTargets**](DevicePreviewsControllerApi#Get-DevicePreviewTargets) | **GET** /device-preview-targets | List device preview targets
[**Move-DevicePreviewRuns**](DevicePreviewsControllerApi#Move-DevicePreviewRuns) | **PUT** /emails/device-previews/folders/runs | Move device preview runs to a folder or Unfiled
[**Invoke-RerunDevicePreviewTargets**](DevicePreviewsControllerApi#Invoke-RerunDevicePreviewTargets) | **POST** /emails/device-previews/{runId}/targets/rerun | Rerun selected device preview targets in the same run
[**Update-DevicePreviewEmailDomainSubdomain**](DevicePreviewsControllerApi#Update-DevicePreviewEmailDomainSubdomain) | **PUT** /emails/device-previews/email-domain/subdomain | Update account device preview email subdomain
[**Update-DevicePreviewFeedback**](DevicePreviewsControllerApi#Update-DevicePreviewFeedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback
[**Update-DevicePreviewFolder**](DevicePreviewsControllerApi#Update-DevicePreviewFolder) | **PUT** /emails/device-previews/folders/{folderId} | Rename or move a device preview folder
[**Update-DevicePreviewProfile**](DevicePreviewsControllerApi#Update-DevicePreviewProfile) | **PUT** /emails/device-previews/profiles/{profileId} | Update a device preview profile
[**Wait-ForDevicePreviewEmailRuns**](DevicePreviewsControllerApi#Wait-ForDevicePreviewEmailRuns) | **GET** /emails/device-previews/email-runs/wait | Wait for device preview runs created from account email domains
[**Wait-ForDevicePreviewEmailSubmissions**](DevicePreviewsControllerApi#Wait-ForDevicePreviewEmailSubmissions) | **GET** /emails/device-previews/email-submissions/wait | Wait for received device preview email submissions
[**Wait-ForDevicePreviewRun**](DevicePreviewsControllerApi#Wait-ForDevicePreviewRun) | **GET** /emails/device-previews/{runId}/wait | Wait for device preview run to complete


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

<a name="New-DevicePreviewFolder"></a>
# **New-DevicePreviewFolder**
> DevicePreviewFolderDto New-DevicePreviewFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewFolderOptions] <PSCustomObject><br>

Create a device preview folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDevicePreviewFolderOptions = (Initialize-CreateDevicePreviewFolderOptions -Name "Name_example" -ParentFolderId "ParentFolderId_example") # CreateDevicePreviewFolderOptions | 

# Create a device preview folder
try {
     $Result = New-DevicePreviewFolder -CreateDevicePreviewFolderOptions $CreateDevicePreviewFolderOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDevicePreviewFolderOptions** | [**CreateDevicePreviewFolderOptions**](CreateDevicePreviewFolderOptions)|  | 

### Return type

[**DevicePreviewFolderDto**](DevicePreviewFolderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewImportAddress"></a>
# **New-DevicePreviewImportAddress**
> DevicePreviewIngestAddressDto New-DevicePreviewImportAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewIngestAddressOptions] <PSCustomObject><br>

Create a temporary email address for device preview import

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDevicePreviewIngestAddressOptions = (Initialize-CreateDevicePreviewIngestAddressOptions -Options (Initialize-CreateDevicePreviewOptions -Targets @("Targets_example") -AllTargets $false -Qa (Initialize-CreateDevicePreviewQaOptions -EmailAudit $false -DomainMonitor $false -SenderDomain "SenderDomain_example") -FolderId "FolderId_example")) # CreateDevicePreviewIngestAddressOptions |  (optional)

# Create a temporary email address for device preview import
try {
     $Result = New-DevicePreviewImportAddress -CreateDevicePreviewIngestAddressOptions $CreateDevicePreviewIngestAddressOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewImportAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDevicePreviewIngestAddressOptions** | [**CreateDevicePreviewIngestAddressOptions**](CreateDevicePreviewIngestAddressOptions)|  | [optional] 

### Return type

[**DevicePreviewIngestAddressDto**](DevicePreviewIngestAddressDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewProfile"></a>
# **New-DevicePreviewProfile**
> DevicePreviewProfileDto New-DevicePreviewProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewProfileOptions] <PSCustomObject><br>

Create a device preview profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDevicePreviewProfileOptions = (Initialize-CreateDevicePreviewProfileOptions -LocalPart "LocalPart_example" -DisplayName "DisplayName_example" -Options (Initialize-CreateDevicePreviewOptions -Targets @("Targets_example") -AllTargets $false -Qa (Initialize-CreateDevicePreviewQaOptions -EmailAudit $false -DomainMonitor $false -SenderDomain "SenderDomain_example") -FolderId "FolderId_example") -Enabled $false) # CreateDevicePreviewProfileOptions | 

# Create a device preview profile
try {
     $Result = New-DevicePreviewProfile -CreateDevicePreviewProfileOptions $CreateDevicePreviewProfileOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDevicePreviewProfileOptions** | [**CreateDevicePreviewProfileOptions**](CreateDevicePreviewProfileOptions)|  | 

### Return type

[**DevicePreviewProfileDto**](DevicePreviewProfileDto) (PSCustomObject)

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
$CreateDevicePreviewOptions =  # CreateDevicePreviewOptions |  (optional)

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

<a name="New-DevicePreviewRunFromFile"></a>
# **New-DevicePreviewRunFromFile**
> CreateDevicePreviewRunResult New-DevicePreviewRunFromFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Subject] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceAlias] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExternalId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Providers] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllTargets] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Targets] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAudit] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainMonitor] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SenderDomain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>

Create a device preview run from an HTML, EML, or ZIP file

Uploads an HTML or RFC822 EML file, or a ZIP archive containing exactly one HTML or EML file. ZIP uploads are bounded by entry count, expanded size, and compression ratio.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$File = 987 # System.IO.FileInfo | An .html, .htm, or .eml file, or a .zip archive containing exactly one supported file.
$Subject = "Subject_example" # String |  (optional)
$From = "From_example" # String |  (optional)
$To = "To_example" # String |  (optional)
$SourceAlias = "SourceAlias_example" # String |  (optional)
$ExternalId = "ExternalId_example" # String |  (optional)
$Providers = @("Inner_example") # String[] | Legacy web-provider keys to render. (optional)
$AllTargets = true # Boolean | Render every currently configured target. (optional)
$Targets = @("Inner_example") # String[] | Device preview target keys to render. (optional)
$EmailAudit = true # Boolean |  (optional)
$DomainMonitor = true # Boolean |  (optional)
$SenderDomain = "SenderDomain_example" # String |  (optional)
$FolderId = "FolderId_example" # String |  (optional)

# Create a device preview run from an HTML, EML, or ZIP file
try {
     $Result = New-DevicePreviewRunFromFile -File $File -Subject $Subject -From $From -To $To -SourceAlias $SourceAlias -ExternalId $ExternalId -Providers $Providers -AllTargets $AllTargets -Targets $Targets -EmailAudit $EmailAudit -DomainMonitor $DomainMonitor -SenderDomain $SenderDomain -FolderId $FolderId
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewRunFromFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| An .html, .htm, or .eml file, or a .zip archive containing exactly one supported file. | 
 **Subject** | **String**|  | [optional] 
 **From** | **String**|  | [optional] 
 **To** | **String**|  | [optional] 
 **SourceAlias** | **String**|  | [optional] 
 **ExternalId** | **String**|  | [optional] 
 **Providers** | [**String[]**](String)| Legacy web-provider keys to render. | [optional] 
 **AllTargets** | **Boolean**| Render every currently configured target. | [optional] 
 **Targets** | [**String[]**](String)| Device preview target keys to render. | [optional] 
 **EmailAudit** | **Boolean**|  | [optional] 
 **DomainMonitor** | **Boolean**|  | [optional] 
 **SenderDomain** | **String**|  | [optional] 
 **FolderId** | [**String**](String)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewRunFromHtmlImport"></a>
# **New-DevicePreviewRunFromHtmlImport**
> CreateDevicePreviewRunResult New-DevicePreviewRunFromHtmlImport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewHtmlImportOptions] <PSCustomObject><br>

Create a device preview run from HTML

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDevicePreviewHtmlImportOptions = (Initialize-CreateDevicePreviewHtmlImportOptions -Html "Html_example" -Subject "Subject_example" -VarFrom "VarFrom_example" -To "To_example" -SourceAlias "SourceAlias_example" -ExternalId "ExternalId_example" -Options ) # CreateDevicePreviewHtmlImportOptions | 

# Create a device preview run from HTML
try {
     $Result = New-DevicePreviewRunFromHtmlImport -CreateDevicePreviewHtmlImportOptions $CreateDevicePreviewHtmlImportOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewRunFromHtmlImport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDevicePreviewHtmlImportOptions** | [**CreateDevicePreviewHtmlImportOptions**](CreateDevicePreviewHtmlImportOptions)|  | 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewRunFromImport"></a>
# **New-DevicePreviewRunFromImport**
> CreateDevicePreviewRunResult New-DevicePreviewRunFromImport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewImportOptions] <PSCustomObject><br>

Create a device preview run from imported raw MIME

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDevicePreviewImportOptions = (Initialize-CreateDevicePreviewImportOptions -RawEmailBase64 "RawEmailBase64_example" -SourceAlias "SourceAlias_example" -ExternalId "ExternalId_example" -Options ) # CreateDevicePreviewImportOptions | 

# Create a device preview run from imported raw MIME
try {
     $Result = New-DevicePreviewRunFromImport -CreateDevicePreviewImportOptions $CreateDevicePreviewImportOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewRunFromImport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDevicePreviewImportOptions** | [**CreateDevicePreviewImportOptions**](CreateDevicePreviewImportOptions)|  | 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewRunFromMultipartImport"></a>
# **New-DevicePreviewRunFromMultipartImport**
> CreateDevicePreviewRunResult New-DevicePreviewRunFromMultipartImport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceAlias] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExternalId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllTargets] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Targets] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>

Create a device preview run from multipart EML upload

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$File = 987 # System.IO.FileInfo | 
$SourceAlias = "SourceAlias_example" # String |  (optional)
$ExternalId = "ExternalId_example" # String |  (optional)
$AllTargets = true # Boolean | Render every currently configured target. (optional)
$Targets = @("Inner_example") # String[] | Device preview target keys to render. (optional)
$FolderId = "FolderId_example" # String |  (optional)

# Create a device preview run from multipart EML upload
try {
     $Result = New-DevicePreviewRunFromMultipartImport -File $File -SourceAlias $SourceAlias -ExternalId $ExternalId -AllTargets $AllTargets -Targets $Targets -FolderId $FolderId
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewRunFromMultipartImport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | 
 **SourceAlias** | **String**|  | [optional] 
 **ExternalId** | **String**|  | [optional] 
 **AllTargets** | **Boolean**| Render every currently configured target. | [optional] 
 **Targets** | [**String[]**](String)| Device preview target keys to render. | [optional] 
 **FolderId** | [**String**](String)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewRunFromRawImport"></a>
# **New-DevicePreviewRunFromRawImport**
> CreateDevicePreviewRunResult New-DevicePreviewRunFromRawImport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceAlias] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExternalId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllTargets] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Targets] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>

Create a device preview run from raw MIME bytes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SourceAlias = "SourceAlias_example" # String |  (optional)
$ExternalId = "ExternalId_example" # String |  (optional)
$AllTargets = true # Boolean | Render every currently configured target. (optional)
$Targets = @("Inner_example") # String[] | Device preview target keys to render. (optional)
$FolderId = "FolderId_example" # String |  (optional)

# Create a device preview run from raw MIME bytes
try {
     $Result = New-DevicePreviewRunFromRawImport -SourceAlias $SourceAlias -ExternalId $ExternalId -AllTargets $AllTargets -Targets $Targets -FolderId $FolderId
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewRunFromRawImport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceAlias** | **String**|  | [optional] 
 **ExternalId** | **String**|  | [optional] 
 **AllTargets** | **Boolean**| Render every currently configured target. | [optional] 
 **Targets** | [**String[]**](String)| Device preview target keys to render. | [optional] 
 **FolderId** | [**String**](String)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DevicePreviewShareLink"></a>
# **New-DevicePreviewShareLink**
> DevicePreviewShareLinkDto New-DevicePreviewShareLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDevicePreviewShareLinkOptions] <PSCustomObject><br>

Create a share link for a device preview run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 
$CreateDevicePreviewShareLinkOptions = (Initialize-CreateDevicePreviewShareLinkOptions -Label "Label_example" -ExpiresAt Get-Date) # CreateDevicePreviewShareLinkOptions |  (optional)

# Create a share link for a device preview run
try {
     $Result = New-DevicePreviewShareLink -RunId $RunId -CreateDevicePreviewShareLinkOptions $CreateDevicePreviewShareLinkOptions
} catch {
    Write-Host ("Exception occured when calling New-DevicePreviewShareLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 
 **CreateDevicePreviewShareLinkOptions** | [**CreateDevicePreviewShareLinkOptions**](CreateDevicePreviewShareLinkOptions)|  | [optional] 

### Return type

[**DevicePreviewShareLinkDto**](DevicePreviewShareLinkDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDevicePreviewFolder"></a>
# **Invoke-DeleteDevicePreviewFolder**
> DeleteDevicePreviewFolderResult Invoke-DeleteDevicePreviewFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>

Delete a folder, preserving renders and child folders

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$FolderId = "FolderId_example" # String | 

# Delete a folder, preserving renders and child folders
try {
     $Result = Invoke-DeleteDevicePreviewFolder -FolderId $FolderId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDevicePreviewFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FolderId** | [**String**](String)|  | 

### Return type

[**DeleteDevicePreviewFolderResult**](DeleteDevicePreviewFolderResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDevicePreviewProfile"></a>
# **Invoke-DeleteDevicePreviewProfile**
> DeleteDevicePreviewProfileResult Invoke-DeleteDevicePreviewProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>

Delete a device preview profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProfileId = "ProfileId_example" # String | 

# Delete a device preview profile
try {
     $Result = Invoke-DeleteDevicePreviewProfile -ProfileId $ProfileId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDevicePreviewProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProfileId** | [**String**](String)|  | 

### Return type

[**DeleteDevicePreviewProfileResult**](DeleteDevicePreviewProfileResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
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

<a name="Invoke-DeleteDevicePreviewShareLink"></a>
# **Invoke-DeleteDevicePreviewShareLink**
> DeleteDevicePreviewShareLinkResult Invoke-DeleteDevicePreviewShareLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShareLinkId] <PSCustomObject><br>

Revoke a device preview share link

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ShareLinkId = "ShareLinkId_example" # String | 

# Revoke a device preview share link
try {
     $Result = Invoke-DeleteDevicePreviewShareLink -ShareLinkId $ShareLinkId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDevicePreviewShareLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShareLinkId** | [**String**](String)|  | 

### Return type

[**DeleteDevicePreviewShareLinkResult**](DeleteDevicePreviewShareLinkResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail"></a>
# **Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail**
> System.IO.FileInfo Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SubmissionId] <PSCustomObject><br>

Download the original RFC822 email for a device preview submission

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SubmissionId = "SubmissionId_example" # String | 

# Download the original RFC822 email for a device preview submission
try {
     $Result = Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail -SubmissionId $SubmissionId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadDevicePreviewEmailSubmissionSourceEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SubmissionId** | [**String**](String)|  | 

### Return type

**System.IO.FileInfo**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: message/rfc822

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DownloadDevicePreviewRunSourceEmail"></a>
# **Invoke-DownloadDevicePreviewRunSourceEmail**
> System.IO.FileInfo Invoke-DownloadDevicePreviewRunSourceEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>

Download the original RFC822 email for a device preview run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

# Download the original RFC822 email for a device preview run
try {
     $Result = Invoke-DownloadDevicePreviewRunSourceEmail -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Invoke-DownloadDevicePreviewRunSourceEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

**System.IO.FileInfo**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: message/rfc822

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
$CreateDevicePreviewOptions =  # CreateDevicePreviewOptions |  (optional)

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

<a name="Get-DevicePreviewEmailDomainOrCreate"></a>
# **Get-DevicePreviewEmailDomainOrCreate**
> DevicePreviewAccountSettingsDto Get-DevicePreviewEmailDomainOrCreate<br>

Return account device preview email domain setup or create one

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Return account device preview email domain setup or create one
try {
     $Result = Get-DevicePreviewEmailDomainOrCreate
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewEmailDomainOrCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewAccountSettingsDto**](DevicePreviewAccountSettingsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewEmailRuns"></a>
# **Get-DevicePreviewEmailRuns**
> DevicePreviewRunDto[] Get-DevicePreviewEmailRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalPart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HydrateThumbnail] <System.Nullable[Boolean]><br>

List device preview runs created from account email domains

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime | 
$EmailDomainId = "EmailDomainId_example" # String |  (optional)
$ProfileId = "ProfileId_example" # String |  (optional)
$LocalPart = "LocalPart_example" # String |  (optional)
$Limit = 987 # Int32 |  (optional) (default to 20)
$HydrateThumbnail = true # Boolean | Hydrate each returned run with a nullable primary screenshot thumbnail URL. (optional) (default to $false)

# List device preview runs created from account email domains
try {
     $Result = Get-DevicePreviewEmailRuns -Since $Since -EmailDomainId $EmailDomainId -ProfileId $ProfileId -LocalPart $LocalPart -Limit $Limit -HydrateThumbnail $HydrateThumbnail
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewEmailRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | 
 **EmailDomainId** | [**String**](String)|  | [optional] 
 **ProfileId** | [**String**](String)|  | [optional] 
 **LocalPart** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]
 **HydrateThumbnail** | **Boolean**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to $false]

### Return type

[**DevicePreviewRunDto[]**](DevicePreviewRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewEmailSubmissionSourceEmail"></a>
# **Get-DevicePreviewEmailSubmissionSourceEmail**
> DevicePreviewSourceEmailDto Get-DevicePreviewEmailSubmissionSourceEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SubmissionId] <PSCustomObject><br>

Get the original email content for a device preview submission

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SubmissionId = "SubmissionId_example" # String | 

# Get the original email content for a device preview submission
try {
     $Result = Get-DevicePreviewEmailSubmissionSourceEmail -SubmissionId $SubmissionId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewEmailSubmissionSourceEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SubmissionId** | [**String**](String)|  | 

### Return type

[**DevicePreviewSourceEmailDto**](DevicePreviewSourceEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewEmailSubmissions"></a>
# **Get-DevicePreviewEmailSubmissions**
> DevicePreviewEmailSubmissionDto[] Get-DevicePreviewEmailSubmissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalPart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecipientEmailAddress] <String><br>

List received device preview email submissions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime | 
$EmailDomainId = "EmailDomainId_example" # String |  (optional)
$ProfileId = "ProfileId_example" # String |  (optional)
$LocalPart = "LocalPart_example" # String |  (optional)
$Limit = 987 # Int32 |  (optional) (default to 20)
$RecipientEmailAddress = "RecipientEmailAddress_example" # String |  (optional)

# List received device preview email submissions
try {
     $Result = Get-DevicePreviewEmailSubmissions -Since $Since -EmailDomainId $EmailDomainId -ProfileId $ProfileId -LocalPart $LocalPart -Limit $Limit -RecipientEmailAddress $RecipientEmailAddress
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewEmailSubmissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | 
 **EmailDomainId** | [**String**](String)|  | [optional] 
 **ProfileId** | [**String**](String)|  | [optional] 
 **LocalPart** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]
 **RecipientEmailAddress** | **String**|  | [optional] 

### Return type

[**DevicePreviewEmailSubmissionDto[]**](DevicePreviewEmailSubmissionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
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

<a name="Get-DevicePreviewFolder"></a>
# **Get-DevicePreviewFolder**
> DevicePreviewFolderDto Get-DevicePreviewFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>

Get a device preview folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$FolderId = "FolderId_example" # String | 

# Get a device preview folder
try {
     $Result = Get-DevicePreviewFolder -FolderId $FolderId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FolderId** | [**String**](String)|  | 

### Return type

[**DevicePreviewFolderDto**](DevicePreviewFolderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewFolders"></a>
# **Get-DevicePreviewFolders**
> DevicePreviewFolderDto[] Get-DevicePreviewFolders<br>

List device preview folders

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List device preview folders
try {
     $Result = Get-DevicePreviewFolders
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewFolders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewFolderDto[]**](DevicePreviewFolderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewImportAddress"></a>
# **Get-DevicePreviewImportAddress**
> DevicePreviewIngestAddressDto Get-DevicePreviewImportAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <PSCustomObject><br>

Get temporary device preview import address status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SessionId = "SessionId_example" # String | 

# Get temporary device preview import address status
try {
     $Result = Get-DevicePreviewImportAddress -SessionId $SessionId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewImportAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | [**String**](String)|  | 

### Return type

[**DevicePreviewIngestAddressDto**](DevicePreviewIngestAddressDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewNativeTargetAvailability"></a>
# **Get-DevicePreviewNativeTargetAvailability**
> DevicePreviewNativeTargetAvailabilityListDto Get-DevicePreviewNativeTargetAvailability<br>

Get native device preview target availability

Returns live native device preview target availability for authenticated API clients, including worker health, queue, timeout, and status fields. Use `/device-preview-targets` when you need the stable catalog without transient availability data.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get native device preview target availability
try {
     $Result = Get-DevicePreviewNativeTargetAvailability
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewNativeTargetAvailability: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewNativeTargetAvailabilityListDto**](DevicePreviewNativeTargetAvailabilityListDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewProfile"></a>
# **Get-DevicePreviewProfile**
> DevicePreviewProfileDto Get-DevicePreviewProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>

Get a device preview profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProfileId = "ProfileId_example" # String | 

# Get a device preview profile
try {
     $Result = Get-DevicePreviewProfile -ProfileId $ProfileId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProfileId** | [**String**](String)|  | 

### Return type

[**DevicePreviewProfileDto**](DevicePreviewProfileDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewProfiles"></a>
# **Get-DevicePreviewProfiles**
> DevicePreviewProfileDto[] Get-DevicePreviewProfiles<br>

List device preview profiles

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List device preview profiles
try {
     $Result = Get-DevicePreviewProfiles
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewProfileDto[]**](DevicePreviewProfileDto) (PSCustomObject)

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

Get a device preview screenshot image

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

# Get a device preview screenshot image
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

<a name="Get-DevicePreviewRunSourceEmail"></a>
# **Get-DevicePreviewRunSourceEmail**
> DevicePreviewSourceEmailDto Get-DevicePreviewRunSourceEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>

Get the original email content for a device preview run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

# Get the original email content for a device preview run
try {
     $Result = Get-DevicePreviewRunSourceEmail -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunSourceEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

[**DevicePreviewSourceEmailDto**](DevicePreviewSourceEmailDto) (PSCustomObject)

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HydrateThumbnail] <System.Nullable[Boolean]><br>

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
$HydrateThumbnail = true # Boolean | Hydrate each returned run with a nullable primary screenshot thumbnail URL. (optional) (default to $false)

# List previous device preview runs for an email
try {
     $Result = Get-DevicePreviewRuns -EmailId $EmailId -Limit $Limit -HydrateThumbnail $HydrateThumbnail
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
 **HydrateThumbnail** | **Boolean**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to $false]

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HydrateThumbnail] <System.Nullable[Boolean]><br>

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
$HydrateThumbnail = true # Boolean | Hydrate each returned run with a nullable primary screenshot thumbnail URL. (optional) (default to $false)

# List previous device preview runs for account
try {
     $Result = Get-DevicePreviewRunsForAccount -Limit $Limit -HydrateThumbnail $HydrateThumbnail
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunsForAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**|  | [optional] [default to 50]
 **HydrateThumbnail** | **Boolean**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to $false]

### Return type

[**DevicePreviewRunDto[]**](DevicePreviewRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewRunsForAccountOffsetPaginated"></a>
# **Get-DevicePreviewRunsForAccountOffsetPaginated**
> PageDevicePreviewRunProjection Get-DevicePreviewRunsForAccountOffsetPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HydrateThumbnail] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnfiledOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

List previous device preview runs for account in paginated form

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$HydrateThumbnail = true # Boolean | Hydrate each returned run with a nullable primary screenshot thumbnail URL. (optional) (default to $false)
$FolderId = "FolderId_example" # String |  (optional)
$UnfiledOnly = true # Boolean |  (optional) (default to $false)
$EmailId = "EmailId_example" # String |  (optional)

# List previous device preview runs for account in paginated form
try {
     $Result = Get-DevicePreviewRunsForAccountOffsetPaginated -Page $Page -Size $Size -Sort $Sort -HydrateThumbnail $HydrateThumbnail -FolderId $FolderId -UnfiledOnly $UnfiledOnly -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewRunsForAccountOffsetPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **HydrateThumbnail** | **Boolean**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to $false]
 **FolderId** | [**String**](String)|  | [optional] 
 **UnfiledOnly** | **Boolean**|  | [optional] [default to $false]
 **EmailId** | [**String**](String)|  | [optional] 

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection) (PSCustomObject)

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HydrateThumbnail] <System.Nullable[Boolean]><br>

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
$HydrateThumbnail = true # Boolean | Hydrate each returned run with a nullable primary screenshot thumbnail URL. (optional) (default to $false)

# List previous device preview runs for an email in paginated form
try {
     $Result = Get-DevicePreviewRunsOffsetPaginated -EmailId $EmailId -Page $Page -Size $Size -Sort $Sort -HydrateThumbnail $HydrateThumbnail
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
 **HydrateThumbnail** | **Boolean**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to $false]

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewShareLinks"></a>
# **Get-DevicePreviewShareLinks**
> DevicePreviewShareLinkDto[] Get-DevicePreviewShareLinks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>

List share links for a device preview run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 

# List share links for a device preview run
try {
     $Result = Get-DevicePreviewShareLinks -RunId $RunId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewShareLinks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 

### Return type

[**DevicePreviewShareLinkDto[]**](DevicePreviewShareLinkDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewSharedResult"></a>
# **Get-DevicePreviewSharedResult**
> DevicePreviewSharedResultDto Get-DevicePreviewSharedResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShareToken] <String><br>

Get a public shared device preview result

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ShareToken = "ShareToken_example" # String | 

# Get a public shared device preview result
try {
     $Result = Get-DevicePreviewSharedResult -ShareToken $ShareToken
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewSharedResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShareToken** | **String**|  | 

### Return type

[**DevicePreviewSharedResultDto**](DevicePreviewSharedResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewSharedResultScreenshot"></a>
# **Get-DevicePreviewSharedResultScreenshot**
> SystemByte Get-DevicePreviewSharedResultScreenshot<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShareToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenshotId] <PSCustomObject><br>

Get a public shared device preview screenshot image

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ShareToken = "ShareToken_example" # String | 
$ScreenshotId = "ScreenshotId_example" # String | 

# Get a public shared device preview screenshot image
try {
     $Result = Get-DevicePreviewSharedResultScreenshot -ShareToken $ShareToken -ScreenshotId $ScreenshotId
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewSharedResultScreenshot: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShareToken** | **String**|  | 
 **ScreenshotId** | [**String**](String)|  | 

### Return type

[**SystemByte**](SystemByte) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DevicePreviewTargets"></a>
# **Get-DevicePreviewTargets**
> DevicePreviewNativeTargetListDto Get-DevicePreviewTargets<br>

List device preview targets

Returns visible native device preview target metadata without worker availability, queue, or health fields.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List device preview targets
try {
     $Result = Get-DevicePreviewTargets
} catch {
    Write-Host ("Exception occured when calling Get-DevicePreviewTargets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DevicePreviewNativeTargetListDto**](DevicePreviewNativeTargetListDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Move-DevicePreviewRuns"></a>
# **Move-DevicePreviewRuns**
> MoveDevicePreviewRunsResult Move-DevicePreviewRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MoveDevicePreviewRunsOptions] <PSCustomObject><br>

Move device preview runs to a folder or Unfiled

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MoveDevicePreviewRunsOptions = (Initialize-MoveDevicePreviewRunsOptions -RunIds @("RunIds_example") -FolderId "FolderId_example") # MoveDevicePreviewRunsOptions | 

# Move device preview runs to a folder or Unfiled
try {
     $Result = Move-DevicePreviewRuns -MoveDevicePreviewRunsOptions $MoveDevicePreviewRunsOptions
} catch {
    Write-Host ("Exception occured when calling Move-DevicePreviewRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MoveDevicePreviewRunsOptions** | [**MoveDevicePreviewRunsOptions**](MoveDevicePreviewRunsOptions)|  | 

### Return type

[**MoveDevicePreviewRunsResult**](MoveDevicePreviewRunsResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RerunDevicePreviewTargets"></a>
# **Invoke-RerunDevicePreviewTargets**
> RerunDevicePreviewTargetsResult Invoke-RerunDevicePreviewTargets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RerunDevicePreviewTargetsOptions] <PSCustomObject><br>

Rerun selected device preview targets in the same run

Set failedOnly=false to rerun a successful target. Successful targets consume their configured credit cost again.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 
$RerunDevicePreviewTargetsOptions = (Initialize-RerunDevicePreviewTargetsOptions -TargetIds @("TargetIds_example") -FailedOnly $false) # RerunDevicePreviewTargetsOptions | 

# Rerun selected device preview targets in the same run
try {
     $Result = Invoke-RerunDevicePreviewTargets -RunId $RunId -RerunDevicePreviewTargetsOptions $RerunDevicePreviewTargetsOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-RerunDevicePreviewTargets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 
 **RerunDevicePreviewTargetsOptions** | [**RerunDevicePreviewTargetsOptions**](RerunDevicePreviewTargetsOptions)|  | 

### Return type

[**RerunDevicePreviewTargetsResult**](RerunDevicePreviewTargetsResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-DevicePreviewEmailDomainSubdomain"></a>
# **Update-DevicePreviewEmailDomainSubdomain**
> DevicePreviewAccountSettingsDto Update-DevicePreviewEmailDomainSubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDevicePreviewIngestDomainOptions] <PSCustomObject><br>

Update account device preview email subdomain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UpdateDevicePreviewIngestDomainOptions = (Initialize-UpdateDevicePreviewIngestDomainOptions -Subdomain "Subdomain_example") # UpdateDevicePreviewIngestDomainOptions | 

# Update account device preview email subdomain
try {
     $Result = Update-DevicePreviewEmailDomainSubdomain -UpdateDevicePreviewIngestDomainOptions $UpdateDevicePreviewIngestDomainOptions
} catch {
    Write-Host ("Exception occured when calling Update-DevicePreviewEmailDomainSubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateDevicePreviewIngestDomainOptions** | [**UpdateDevicePreviewIngestDomainOptions**](UpdateDevicePreviewIngestDomainOptions)|  | 

### Return type

[**DevicePreviewAccountSettingsDto**](DevicePreviewAccountSettingsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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

<a name="Update-DevicePreviewFolder"></a>
# **Update-DevicePreviewFolder**
> DevicePreviewFolderDto Update-DevicePreviewFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDevicePreviewFolderOptions] <PSCustomObject><br>

Rename or move a device preview folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$FolderId = "FolderId_example" # String | 
$UpdateDevicePreviewFolderOptions = (Initialize-UpdateDevicePreviewFolderOptions -Name "Name_example" -ParentFolderId "ParentFolderId_example") # UpdateDevicePreviewFolderOptions | 

# Rename or move a device preview folder
try {
     $Result = Update-DevicePreviewFolder -FolderId $FolderId -UpdateDevicePreviewFolderOptions $UpdateDevicePreviewFolderOptions
} catch {
    Write-Host ("Exception occured when calling Update-DevicePreviewFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FolderId** | [**String**](String)|  | 
 **UpdateDevicePreviewFolderOptions** | [**UpdateDevicePreviewFolderOptions**](UpdateDevicePreviewFolderOptions)|  | 

### Return type

[**DevicePreviewFolderDto**](DevicePreviewFolderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-DevicePreviewProfile"></a>
# **Update-DevicePreviewProfile**
> DevicePreviewProfileDto Update-DevicePreviewProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDevicePreviewProfileOptions] <PSCustomObject><br>

Update a device preview profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProfileId = "ProfileId_example" # String | 
$UpdateDevicePreviewProfileOptions = (Initialize-UpdateDevicePreviewProfileOptions -LocalPart "LocalPart_example" -DisplayName "DisplayName_example" -Options  -Enabled $false) # UpdateDevicePreviewProfileOptions | 

# Update a device preview profile
try {
     $Result = Update-DevicePreviewProfile -ProfileId $ProfileId -UpdateDevicePreviewProfileOptions $UpdateDevicePreviewProfileOptions
} catch {
    Write-Host ("Exception occured when calling Update-DevicePreviewProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProfileId** | [**String**](String)|  | 
 **UpdateDevicePreviewProfileOptions** | [**UpdateDevicePreviewProfileOptions**](UpdateDevicePreviewProfileOptions)|  | 

### Return type

[**DevicePreviewProfileDto**](DevicePreviewProfileDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForDevicePreviewEmailRuns"></a>
# **Wait-ForDevicePreviewEmailRuns**
> DevicePreviewIngestRunWaitResult Wait-ForDevicePreviewEmailRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalPart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeoutMillis] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PollIntervalMillis] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HydrateThumbnail] <System.Nullable[Boolean]><br>

Wait for device preview runs created from account email domains

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime | 
$EmailDomainId = "EmailDomainId_example" # String |  (optional)
$ProfileId = "ProfileId_example" # String |  (optional)
$LocalPart = "LocalPart_example" # String |  (optional)
$Limit = 987 # Int32 |  (optional) (default to 20)
$TimeoutMillis = 987 # Int64 |  (optional) (default to 25000)
$PollIntervalMillis = 987 # Int64 |  (optional) (default to 1000)
$HydrateThumbnail = true # Boolean | Hydrate each returned run with a nullable primary screenshot thumbnail URL. (optional) (default to $false)

# Wait for device preview runs created from account email domains
try {
     $Result = Wait-ForDevicePreviewEmailRuns -Since $Since -EmailDomainId $EmailDomainId -ProfileId $ProfileId -LocalPart $LocalPart -Limit $Limit -TimeoutMillis $TimeoutMillis -PollIntervalMillis $PollIntervalMillis -HydrateThumbnail $HydrateThumbnail
} catch {
    Write-Host ("Exception occured when calling Wait-ForDevicePreviewEmailRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | 
 **EmailDomainId** | [**String**](String)|  | [optional] 
 **ProfileId** | [**String**](String)|  | [optional] 
 **LocalPart** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]
 **TimeoutMillis** | **Int64**|  | [optional] [default to 25000]
 **PollIntervalMillis** | **Int64**|  | [optional] [default to 1000]
 **HydrateThumbnail** | **Boolean**| Hydrate each returned run with a nullable primary screenshot thumbnail URL. | [optional] [default to $false]

### Return type

[**DevicePreviewIngestRunWaitResult**](DevicePreviewIngestRunWaitResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForDevicePreviewEmailSubmissions"></a>
# **Wait-ForDevicePreviewEmailSubmissions**
> DevicePreviewEmailSubmissionWaitResult Wait-ForDevicePreviewEmailSubmissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalPart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeoutMillis] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PollIntervalMillis] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecipientEmailAddress] <String><br>

Wait for received device preview email submissions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime | 
$EmailDomainId = "EmailDomainId_example" # String |  (optional)
$ProfileId = "ProfileId_example" # String |  (optional)
$LocalPart = "LocalPart_example" # String |  (optional)
$Limit = 987 # Int32 |  (optional) (default to 20)
$TimeoutMillis = 987 # Int64 |  (optional) (default to 25000)
$PollIntervalMillis = 987 # Int64 |  (optional) (default to 1000)
$RecipientEmailAddress = "RecipientEmailAddress_example" # String |  (optional)

# Wait for received device preview email submissions
try {
     $Result = Wait-ForDevicePreviewEmailSubmissions -Since $Since -EmailDomainId $EmailDomainId -ProfileId $ProfileId -LocalPart $LocalPart -Limit $Limit -TimeoutMillis $TimeoutMillis -PollIntervalMillis $PollIntervalMillis -RecipientEmailAddress $RecipientEmailAddress
} catch {
    Write-Host ("Exception occured when calling Wait-ForDevicePreviewEmailSubmissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | 
 **EmailDomainId** | [**String**](String)|  | [optional] 
 **ProfileId** | [**String**](String)|  | [optional] 
 **LocalPart** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]
 **TimeoutMillis** | **Int64**|  | [optional] [default to 25000]
 **PollIntervalMillis** | **Int64**|  | [optional] [default to 1000]
 **RecipientEmailAddress** | **String**|  | [optional] 

### Return type

[**DevicePreviewEmailSubmissionWaitResult**](DevicePreviewEmailSubmissionWaitResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForDevicePreviewRun"></a>
# **Wait-ForDevicePreviewRun**
> DevicePreviewRunWaitResult Wait-ForDevicePreviewRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeoutMillis] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PollIntervalMillis] <System.Nullable[Int64]><br>

Wait for device preview run to complete

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RunId = "RunId_example" # String | 
$TimeoutMillis = 987 # Int64 |  (optional) (default to 25000)
$PollIntervalMillis = 987 # Int64 |  (optional) (default to 1000)

# Wait for device preview run to complete
try {
     $Result = Wait-ForDevicePreviewRun -RunId $RunId -TimeoutMillis $TimeoutMillis -PollIntervalMillis $PollIntervalMillis
} catch {
    Write-Host ("Exception occured when calling Wait-ForDevicePreviewRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RunId** | [**String**](String)|  | 
 **TimeoutMillis** | **Int64**|  | [optional] [default to 25000]
 **PollIntervalMillis** | **Int64**|  | [optional] [default to 1000]

### Return type

[**DevicePreviewRunWaitResult**](DevicePreviewRunWaitResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

