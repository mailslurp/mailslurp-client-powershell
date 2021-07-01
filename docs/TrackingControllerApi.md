# maislurp-client-powershell.maislurp-client-powershell/Api.TrackingControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-TrackingPixel**](TrackingControllerApi#New-TrackingPixel) | **POST** /tracking/pixels | Create tracking pixel
[**Get-AllTrackingPixels**](TrackingControllerApi#Get-AllTrackingPixels) | **GET** /tracking/pixels | Get tracking pixels
[**Get-TrackingPixel**](TrackingControllerApi#Get-TrackingPixel) | **GET** /tracking/pixels/{id} | Get pixel


<a name="New-TrackingPixel"></a>
# **New-TrackingPixel**
> TrackingPixelDto New-TrackingPixel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTrackingPixelOptions] <PSCustomObject><br>

Create tracking pixel

Create a tracking pixel

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTrackingPixelOptions = (Initialize-CreateTrackingPixelOptions -Name "Name_example" -Recipient "Recipient_example") # CreateTrackingPixelOptions | createTrackingPixelOptions

# Create tracking pixel
try {
     $Result = New-TrackingPixel -CreateTrackingPixelOptions $CreateTrackingPixelOptions
} catch {
    Write-Host ("Exception occured when calling New-TrackingPixel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTrackingPixelOptions** | [**CreateTrackingPixelOptions**](CreateTrackingPixelOptions)| createTrackingPixelOptions | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllTrackingPixels"></a>
# **Get-AllTrackingPixels**
> PageTrackingPixelProjection Get-AllTrackingPixels<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get tracking pixels

List tracking pixels in paginated form

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get tracking pixels
try {
     $Result = Get-AllTrackingPixels -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllTrackingPixels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TrackingPixel"></a>
# **Get-TrackingPixel**
> TrackingPixelDto Get-TrackingPixel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get pixel

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | id

# Get pixel
try {
     $Result = Get-TrackingPixel -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-TrackingPixel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| id | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

