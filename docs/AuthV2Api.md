# maislurp-client-powershell.maislurp-client-powershell/Api.AuthV2Api

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AuthV2AccountSwitch**](AuthV2Api#Invoke-AuthV2AccountSwitch) | **POST** /auth/v2/account/switch | Switch the account bound to an Auth v2 session
[**Invoke-AuthV2Bootstrap**](AuthV2Api#Invoke-AuthV2Bootstrap) | **POST** /auth/v2/bootstrap | Bootstrap an existing Auth v2 session
[**Invoke-AuthV2EnvironmentSwitch**](AuthV2Api#Invoke-AuthV2EnvironmentSwitch) | **POST** /auth/v2/environment/{targetUserId}/switch | Switch the environment bound to an Auth v2 session
[**Invoke-AuthV2Logout**](AuthV2Api#Invoke-AuthV2Logout) | **POST** /auth/v2/logout | Revoke an Auth v2 session
[**Invoke-AuthV2PasswordLogin**](AuthV2Api#Invoke-AuthV2PasswordLogin) | **POST** /auth/v2/password/login | Create an Auth v2 session using a password
[**Invoke-AuthV2ProviderCallback**](AuthV2Api#Invoke-AuthV2ProviderCallback) | **GET** /auth/v2/callback/{providerKind} | Redeem a staging provider handoff and continue to the app
[**Invoke-EmailCallback**](AuthV2Api#Invoke-EmailCallback) | **GET** /auth/v2/callback/email | 
[**Invoke-EmailCallbackComplete**](AuthV2Api#Invoke-EmailCallbackComplete) | **POST** /auth/v2/callback/email/complete | 
[**Invoke-EmailCallbackContinue**](AuthV2Api#Invoke-EmailCallbackContinue) | **GET** /auth/v2/callback/email/continue | 
[**Invoke-EmailCallbackContinueScript**](AuthV2Api#Invoke-EmailCallbackContinueScript) | **GET** /auth/v2/callback/email/continue.js | 
[**Invoke-EmailCallbackHead**](AuthV2Api#Invoke-EmailCallbackHead) | **HEAD** /auth/v2/callback/email | 


<a name="Invoke-AuthV2AccountSwitch"></a>
# **Invoke-AuthV2AccountSwitch**
> AuthV2BootstrapDto Invoke-AuthV2AccountSwitch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SwitchAccountOptions] <PSCustomObject><br>

Switch the account bound to an Auth v2 session

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SwitchAccountOptions = (Initialize-SwitchAccountOptions -TargetAccountId "TargetAccountId_example" -OrganizationSlug "OrganizationSlug_example") # SwitchAccountOptions | 

# Switch the account bound to an Auth v2 session
try {
     $Result = Invoke-AuthV2AccountSwitch -SwitchAccountOptions $SwitchAccountOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthV2AccountSwitch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SwitchAccountOptions** | [**SwitchAccountOptions**](SwitchAccountOptions)|  | 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AuthV2Bootstrap"></a>
# **Invoke-AuthV2Bootstrap**
> AuthV2BootstrapDto Invoke-AuthV2Bootstrap<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthV2BootstrapOptions] <PSCustomObject><br>

Bootstrap an existing Auth v2 session

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuthV2BootstrapOptions = (Initialize-AuthV2BootstrapOptions -ReturnTo "ReturnTo_example") # AuthV2BootstrapOptions |  (optional)

# Bootstrap an existing Auth v2 session
try {
     $Result = Invoke-AuthV2Bootstrap -AuthV2BootstrapOptions $AuthV2BootstrapOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthV2Bootstrap: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthV2BootstrapOptions** | [**AuthV2BootstrapOptions**](AuthV2BootstrapOptions)|  | [optional] 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AuthV2EnvironmentSwitch"></a>
# **Invoke-AuthV2EnvironmentSwitch**
> AuthV2BootstrapDto Invoke-AuthV2EnvironmentSwitch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetUserId] <PSCustomObject><br>

Switch the environment bound to an Auth v2 session

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TargetUserId = "TargetUserId_example" # String | 

# Switch the environment bound to an Auth v2 session
try {
     $Result = Invoke-AuthV2EnvironmentSwitch -TargetUserId $TargetUserId
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthV2EnvironmentSwitch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TargetUserId** | [**String**](String)|  | 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AuthV2Logout"></a>
# **Invoke-AuthV2Logout**
> void Invoke-AuthV2Logout<br>

Revoke an Auth v2 session

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Revoke an Auth v2 session
try {
     $Result = Invoke-AuthV2Logout
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthV2Logout: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AuthV2PasswordLogin"></a>
# **Invoke-AuthV2PasswordLogin**
> AuthV2BootstrapDto Invoke-AuthV2PasswordLogin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthV2PasswordLoginOptions] <PSCustomObject><br>

Create an Auth v2 session using a password

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuthV2PasswordLoginOptions = (Initialize-AuthV2PasswordLoginOptions -EmailAddress "EmailAddress_example" -Password "Password_example" -OrganizationSlug "OrganizationSlug_example" -ReturnTo "ReturnTo_example") # AuthV2PasswordLoginOptions | 

# Create an Auth v2 session using a password
try {
     $Result = Invoke-AuthV2PasswordLogin -AuthV2PasswordLoginOptions $AuthV2PasswordLoginOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthV2PasswordLogin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthV2PasswordLoginOptions** | [**AuthV2PasswordLoginOptions**](AuthV2PasswordLoginOptions)|  | 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AuthV2ProviderCallback"></a>
# **Invoke-AuthV2ProviderCallback**
> void Invoke-AuthV2ProviderCallback<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderKind] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Code] <String><br>

Redeem a staging provider handoff and continue to the app

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ProviderKind = "ProviderKind_example" # String | 
$Code = "Code_example" # String |  (optional)

# Redeem a staging provider handoff and continue to the app
try {
     $Result = Invoke-AuthV2ProviderCallback -ProviderKind $ProviderKind -Code $Code
} catch {
    Write-Host ("Exception occured when calling Invoke-AuthV2ProviderCallback: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderKind** | **String**|  | 
 **Code** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EmailCallback"></a>
# **Invoke-EmailCallback**
> void Invoke-EmailCallback<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Code] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Code = "Code_example" # String |  (optional)

try {
     $Result = Invoke-EmailCallback -Code $Code
} catch {
    Write-Host ("Exception occured when calling Invoke-EmailCallback: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Code** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EmailCallbackComplete"></a>
# **Invoke-EmailCallbackComplete**
> void Invoke-EmailCallbackComplete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Attempt] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Attempt = "Attempt_example" # String |  (optional)

try {
     $Result = Invoke-EmailCallbackComplete -Attempt $Attempt
} catch {
    Write-Host ("Exception occured when calling Invoke-EmailCallbackComplete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Attempt** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EmailCallbackContinue"></a>
# **Invoke-EmailCallbackContinue**
> String Invoke-EmailCallbackContinue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Attempt] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Attempt = "Attempt_example" # String |  (optional)

try {
     $Result = Invoke-EmailCallbackContinue -Attempt $Attempt
} catch {
    Write-Host ("Exception occured when calling Invoke-EmailCallbackContinue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Attempt** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EmailCallbackContinueScript"></a>
# **Invoke-EmailCallbackContinueScript**
> String Invoke-EmailCallbackContinueScript<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Invoke-EmailCallbackContinueScript
} catch {
    Write-Host ("Exception occured when calling Invoke-EmailCallbackContinueScript: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/javascript;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EmailCallbackHead"></a>
# **Invoke-EmailCallbackHead**
> void Invoke-EmailCallbackHead<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


try {
     $Result = Invoke-EmailCallbackHead
} catch {
    Write-Host ("Exception occured when calling Invoke-EmailCallbackHead: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

