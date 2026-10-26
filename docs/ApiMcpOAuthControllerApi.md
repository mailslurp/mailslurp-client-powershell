# maislurp-client-powershell.maislurp-client-powershell/Api.ApiMcpOAuthControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AuthorizationServerMetadata**](ApiMcpOAuthControllerApi#Invoke-AuthorizationServerMetadata) | **GET** /.well-known/oauth-authorization-server/mcp | 
[**Invoke-AuthorizationServerMetadata1**](ApiMcpOAuthControllerApi#Invoke-AuthorizationServerMetadata1) | **GET** /.well-known/oauth-authorization-server | 
[**Invoke-Authorize**](ApiMcpOAuthControllerApi#Invoke-Authorize) | **GET** /mcp/oauth/authorize | 
[**Protect-edResourceMetadata**](ApiMcpOAuthControllerApi#Protect-edResourceMetadata) | **GET** /.well-known/oauth-protected-resource/mcp | 
[**Protect-edResourceMetadata1**](ApiMcpOAuthControllerApi#Protect-edResourceMetadata1) | **GET** /.well-known/oauth-protected-resource | 
[**Register-**](ApiMcpOAuthControllerApi#Register-) | **POST** /mcp/oauth/register | 
[**Invoke-Token**](ApiMcpOAuthControllerApi#Invoke-Token) | **POST** /mcp/oauth/token | 


<a name="Invoke-AuthorizationServerMetadata"></a>
# **Invoke-AuthorizationServerMetadata**
> System.Collections.Hashtable Invoke-AuthorizationServerMetadata<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Invoke-AuthorizationServerMetadata
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthorizationServerMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System.Collections.Hashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AuthorizationServerMetadata1"></a>
# **Invoke-AuthorizationServerMetadata1**
> System.Collections.Hashtable Invoke-AuthorizationServerMetadata1<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Invoke-AuthorizationServerMetadata1
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthorizationServerMetadata1: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System.Collections.Hashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-Authorize"></a>
# **Invoke-Authorize**
> SystemCollectionsHashtable Invoke-Authorize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectUri] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CodeChallenge] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CodeChallengeMethod] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Resource] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scope] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-State] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ClientId = "ClientId_example" # String | 
$RedirectUri = "RedirectUri_example" # String | 
$ResponseType = "ResponseType_example" # String | 
$CodeChallenge = "CodeChallenge_example" # String | 
$CodeChallengeMethod = "CodeChallengeMethod_example" # String | 
$Resource = "Resource_example" # String | 
$Scope = "Scope_example" # String |  (optional)
$State = "State_example" # String |  (optional)

try {
     $Result = Invoke-Authorize -ClientId $ClientId -RedirectUri $RedirectUri -ResponseType $ResponseType -CodeChallenge $CodeChallenge -CodeChallengeMethod $CodeChallengeMethod -Resource $Resource -Scope $Scope -State $State
} catch {
    Write-Host ("Exception occured when calling Invoke-Authorize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ClientId** | **String**|  | 
 **RedirectUri** | **String**|  | 
 **ResponseType** | **String**|  | 
 **CodeChallenge** | **String**|  | 
 **CodeChallengeMethod** | **String**|  | 
 **Resource** | **String**|  | 
 **Scope** | **String**|  | [optional] 
 **State** | **String**|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Protect-edResourceMetadata"></a>
# **Protect-edResourceMetadata**
> System.Collections.Hashtable Protect-edResourceMetadata<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Protect-edResourceMetadata
} catch {
    Write-Host ("Exception occured when calling Protect-edResourceMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System.Collections.Hashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Protect-edResourceMetadata1"></a>
# **Protect-edResourceMetadata1**
> System.Collections.Hashtable Protect-edResourceMetadata1<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Protect-edResourceMetadata1
} catch {
    Write-Host ("Exception occured when calling Protect-edResourceMetadata1: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System.Collections.Hashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Register-"></a>
# **Register-**
> SystemCollectionsHashtable Register-<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-McpOAuthClientRegistrationOptions] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$McpOAuthClientRegistrationOptions = (Initialize-McpOAuthClientRegistrationOptions -ClientName "ClientName_example" -RedirectUris @("RedirectUris_example") -TokenEndpointAuthMethod "TokenEndpointAuthMethod_example" -GrantTypes @("GrantTypes_example") -ResponseTypes @("ResponseTypes_example")) # McpOAuthClientRegistrationOptions | 

try {
     $Result = Register- -McpOAuthClientRegistrationOptions $McpOAuthClientRegistrationOptions
} catch {
    Write-Host ("Exception occured when calling Register-: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **McpOAuthClientRegistrationOptions** | [**McpOAuthClientRegistrationOptions**](McpOAuthClientRegistrationOptions)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-Token"></a>
# **Invoke-Token**
> SystemCollectionsHashtable Invoke-Token<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Resource] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Code] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectUri] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CodeVerifier] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RefreshToken] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GrantType = "GrantType_example" # String | 
$ClientId = "ClientId_example" # String | 
$Resource = "Resource_example" # String | 
$Code = "Code_example" # String |  (optional)
$RedirectUri = "RedirectUri_example" # String |  (optional)
$CodeVerifier = "CodeVerifier_example" # String |  (optional)
$RefreshToken = "RefreshToken_example" # String |  (optional)

try {
     $Result = Invoke-Token -GrantType $GrantType -ClientId $ClientId -Resource $Resource -Code $Code -RedirectUri $RedirectUri -CodeVerifier $CodeVerifier -RefreshToken $RefreshToken
} catch {
    Write-Host ("Exception occured when calling Invoke-Token: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GrantType** | **String**|  | 
 **ClientId** | **String**|  | 
 **Resource** | **String**|  | 
 **Code** | **String**|  | [optional] 
 **RedirectUri** | **String**|  | [optional] 
 **CodeVerifier** | **String**|  | [optional] 
 **RefreshToken** | **String**|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

