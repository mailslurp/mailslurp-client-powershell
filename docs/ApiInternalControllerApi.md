# maislurp-client-powershell.maislurp-client-powershell/Api.ApiInternalControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-SamlUserOrCreate**](ApiInternalControllerApi#Get-SamlUserOrCreate) | **POST** /internal/saml/user | 


<a name="Get-SamlUserOrCreate"></a>
# **Get-SamlUserOrCreate**
> UserDto Get-SamlUserOrCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GetOrCreateSamlUserOptions] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Key = "Key_example" # String | 
$GetOrCreateSamlUserOptions = (Initialize-GetOrCreateSamlUserOptions -Issuer "Issuer_example" -NameId "NameId_example" -NameIdFormat "NameIdFormat_example") # GetOrCreateSamlUserOptions | 

try {
     $Result = Get-SamlUserOrCreate -Key $Key -GetOrCreateSamlUserOptions $GetOrCreateSamlUserOptions
} catch {
    Write-Host ("Exception occured when calling Get-SamlUserOrCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**|  | 
 **GetOrCreateSamlUserOptions** | [**GetOrCreateSamlUserOptions**](GetOrCreateSamlUserOptions)|  | 

### Return type

[**UserDto**](UserDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

