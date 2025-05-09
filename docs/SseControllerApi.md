# maislurp-client-powershell.maislurp-client-powershell/Api.SseControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-StreamEvents**](SseControllerApi#Invoke-StreamEvents) | **GET** /sse | 


<a name="Invoke-StreamEvents"></a>
# **Invoke-StreamEvents**
> String[] Invoke-StreamEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XApiKey] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$XApiKey = "XApiKey_example" # String | 

try {
     $Result = Invoke-StreamEvents -XApiKey $XApiKey
} catch {
    Write-Host ("Exception occured when calling Invoke-StreamEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XApiKey** | **String**|  | 

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

