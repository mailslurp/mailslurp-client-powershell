# maislurp-client-powershell.maislurp-client-powershell/Api.ExportControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Export-Entities**](ExportControllerApi#Export-Entities) | **GET** /export | Export inboxes link callable via browser
[**Get-ExportLink**](ExportControllerApi#Get-ExportLink) | **POST** /export | Get export link


<a name="Export-Entities"></a>
# **Export-Entities**
> SystemByte Export-Entities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutputFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedEarliestTime] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedOldestTime] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludePreviouslyExported] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ListSeparatorToken] <String><br>

Export inboxes link callable via browser

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ApiKey = "ApiKey_example" # String | apiKey
$ExportType = "INBOXES" # String | exportType
$OutputFormat = "CSV_DEFAULT" # String | outputFormat
$CreatedEarliestTime = Get-Date # System.DateTime | createdEarliestTime (optional)
$CreatedOldestTime = Get-Date # System.DateTime | createdOldestTime (optional)
$ExcludePreviouslyExported = true # Boolean | excludePreviouslyExported (optional)
$Filter = "Filter_example" # String | filter (optional)
$ListSeparatorToken = "ListSeparatorToken_example" # String | listSeparatorToken (optional)

# Export inboxes link callable via browser
try {
     $Result = Export-Entities -ApiKey $ApiKey -ExportType $ExportType -OutputFormat $OutputFormat -CreatedEarliestTime $CreatedEarliestTime -CreatedOldestTime $CreatedOldestTime -ExcludePreviouslyExported $ExcludePreviouslyExported -Filter $Filter -ListSeparatorToken $ListSeparatorToken
} catch {
    Write-Host ("Exception occured when calling Export-Entities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApiKey** | **String**| apiKey | 
 **ExportType** | **String**| exportType | 
 **OutputFormat** | **String**| outputFormat | 
 **CreatedEarliestTime** | **System.DateTime**| createdEarliestTime | [optional] 
 **CreatedOldestTime** | **System.DateTime**| createdOldestTime | [optional] 
 **ExcludePreviouslyExported** | **Boolean**| excludePreviouslyExported | [optional] 
 **Filter** | **String**| filter | [optional] 
 **ListSeparatorToken** | **String**| listSeparatorToken | [optional] 

### Return type

[**SystemByte**](SystemByte) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ExportLink"></a>
# **Get-ExportLink**
> ExportLink Get-ExportLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiKey] <String><br>

Get export link

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ExportType = "INBOXES" # String | exportType
$ExportOptions = (Initialize-ExportOptions -OutputFormat "CSV_DEFAULT" -ExcludePreviouslyExported $false -CreatedEarliestTime Get-Date -CreatedOldestTime Get-Date -VarFilter "VarFilter_example" -ListSeparatorToken "TODO") # ExportOptions | exportOptions
$ApiKey = "ApiKey_example" # String | apiKey (optional)

# Get export link
try {
     $Result = Get-ExportLink -ExportType $ExportType -ExportOptions $ExportOptions -ApiKey $ApiKey
} catch {
    Write-Host ("Exception occured when calling Get-ExportLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExportType** | **String**| exportType | 
 **ExportOptions** | [**ExportOptions**](ExportOptions)| exportOptions | 
 **ApiKey** | **String**| apiKey | [optional] 

### Return type

[**ExportLink**](ExportLink) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

