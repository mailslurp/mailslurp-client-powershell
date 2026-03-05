# maislurp-client-powershell.maislurp-client-powershell/Api.MissedSmsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AllMissedSmsMessages**](MissedSmsControllerApi#Get-AllMissedSmsMessages) | **GET** /missed-sms | Get all missed SMS messages in paginated format
[**Get-MissedSmsCount**](MissedSmsControllerApi#Get-MissedSmsCount) | **GET** /missed-sms/count | Get missed SMS count
[**Get-MissedSmsMessage**](MissedSmsControllerApi#Get-MissedSmsMessage) | **GET** /missed-sms/{missedSmsId} | Get missed SMS content


<a name="Get-AllMissedSmsMessages"></a>
# **Get-AllMissedSmsMessages**
> PageMissedSmsProjection Get-AllMissedSmsMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumber] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

Get all missed SMS messages in paginated format

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumber = "PhoneNumber_example" # String | Optional receiving phone number to filter missed SMS for (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter missed SMS after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter missed SMS before given date time (optional)
$Search = "Search_example" # String | Optional search filter (optional)

# Get all missed SMS messages in paginated format
try {
     $Result = Get-AllMissedSmsMessages -PhoneNumber $PhoneNumber -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search
} catch {
    Write-Host ("Exception occured when calling Get-AllMissedSmsMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumber** | [**String**](String)| Optional receiving phone number to filter missed SMS for | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter missed SMS after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter missed SMS before given date time | [optional] 
 **Search** | **String**| Optional search filter | [optional] 

### Return type

[**PageMissedSmsProjection**](PageMissedSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-MissedSmsCount"></a>
# **Get-MissedSmsCount**
> CountDto Get-MissedSmsCount<br>

Get missed SMS count

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get missed SMS count
try {
     $Result = Get-MissedSmsCount
} catch {
    Write-Host ("Exception occured when calling Get-MissedSmsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-MissedSmsMessage"></a>
# **Get-MissedSmsMessage**
> MissedSmsDto Get-MissedSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MissedSmsId] <PSCustomObject><br>

Get missed SMS content

Returns a missed SMS with full content.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MissedSmsId = "MissedSmsId_example" # String | 

# Get missed SMS content
try {
     $Result = Get-MissedSmsMessage -MissedSmsId $MissedSmsId
} catch {
    Write-Host ("Exception occured when calling Get-MissedSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MissedSmsId** | [**String**](String)|  | 

### Return type

[**MissedSmsDto**](MissedSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

