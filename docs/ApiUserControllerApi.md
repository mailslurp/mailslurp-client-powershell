# maislurp-client-powershell.maislurp-client-powershell/Api.ApiUserControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-JsonPropertyAsString**](ApiUserControllerApi#Get-JsonPropertyAsString) | **POST** /user/json/pluck | 
[**Get-UserInfo**](ApiUserControllerApi#Get-UserInfo) | **GET** /user/info | 


<a name="Get-JsonPropertyAsString"></a>
# **Get-JsonPropertyAsString**
> String Get-JsonPropertyAsString<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Property] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Property = "Property_example" # String | JSON property name or dot separated path selector such as `a.b.c`
$Body = TODO # SystemCollectionsHashtable | 

try {
     $Result = Get-JsonPropertyAsString -Property $Property -Body $Body
} catch {
    Write-Host ("Exception occured when calling Get-JsonPropertyAsString: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Property** | **String**| JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **Body** | **SystemCollectionsHashtable**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-UserInfo"></a>
# **Get-UserInfo**
> UserInfoDto Get-UserInfo<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Get-UserInfo
} catch {
    Write-Host ("Exception occured when calling Get-UserInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

