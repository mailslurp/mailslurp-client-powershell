# maislurp-client-powershell.maislurp-client-powershell/Api.OAuthConnectionApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OAuthConnection**](OAuthConnectionApi#New-OAuthConnection) | **POST** /oauth-connection | Create an OAuth connection
[**Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox**](OAuthConnectionApi#Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox) | **POST** /oauth-connection/oauth-exchange/google | Exchange authorization code for access token and create inbox


<a name="New-OAuthConnection"></a>
# **New-OAuthConnection**
> CreateOAuthConnectionResult New-OAuthConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectBase] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuthConnectionType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Create an OAuth connection

Configure an inbox for OAuth sync with MailSlurp

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$RedirectBase = "RedirectBase_example" # String | 
$OAuthConnectionType = "GOOGLE" # String | 
$EmailAddress = "EmailAddress_example" # String |  (optional)

# Create an OAuth connection
try {
     $Result = New-OAuthConnection -RedirectBase $RedirectBase -OAuthConnectionType $OAuthConnectionType -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling New-OAuthConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RedirectBase** | **String**|  | 
 **OAuthConnectionType** | **String**|  | 
 **EmailAddress** | **String**|  | [optional] 

### Return type

[**CreateOAuthConnectionResult**](CreateOAuthConnectionResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox"></a>
# **Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox**
> CreateOAuthExchangeResult Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthorizationCode] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectUri] <String><br>

Exchange authorization code for access token and create inbox

Exchange an OAuth code for an access token and create an inbox connection in MailSlurp

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuthorizationCode = "AuthorizationCode_example" # String | 
$RedirectUri = "RedirectUri_example" # String | 

# Exchange authorization code for access token and create inbox
try {
     $Result = Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox -AuthorizationCode $AuthorizationCode -RedirectUri $RedirectUri
} catch {
    Write-Host ("Exception occured when calling Invoke-ExchangeAuthorizationTokenAndCreateOrUpdateInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthorizationCode** | **String**|  | 
 **RedirectUri** | **String**|  | 

### Return type

[**CreateOAuthExchangeResult**](CreateOAuthExchangeResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

