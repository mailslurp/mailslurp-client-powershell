# maislurp-client-powershell.maislurp-client-powershell/Api.ConsentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CheckSendingConsentForEmailAddress**](ConsentControllerApi#Invoke-CheckSendingConsentForEmailAddress) | **GET** /consent/opt-in/sending-consent | 
[**Get-OptInIdentities**](ConsentControllerApi#Get-OptInIdentities) | **GET** /consent/opt-in | 
[**Revoke-OptInConsentForEmailAddress**](ConsentControllerApi#Revoke-OptInConsentForEmailAddress) | **DELETE** /consent/opt-in | 
[**Send-OptInConsentForEmailAddress**](ConsentControllerApi#Send-OptInConsentForEmailAddress) | **POST** /consent/opt-in/send | Send a verification code to a user once they have explicitly submitted their email address


<a name="Invoke-CheckSendingConsentForEmailAddress"></a>
# **Invoke-CheckSendingConsentForEmailAddress**
> OptInSendingConsentDto Invoke-CheckSendingConsentForEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | Email address to check consent for

try {
     $Result = Invoke-CheckSendingConsentForEmailAddress -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckSendingConsentForEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**| Email address to check consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-OptInIdentities"></a>
# **Get-OptInIdentities**
> PageOptInIdentityProjection Get-OptInIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>



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

try {
     $Result = Get-OptInIdentities -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-OptInIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**PageOptInIdentityProjection**](PageOptInIdentityProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Revoke-OptInConsentForEmailAddress"></a>
# **Revoke-OptInConsentForEmailAddress**
> OptInSendingConsentDto Revoke-OptInConsentForEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | Email address to revoke consent for

try {
     $Result = Revoke-OptInConsentForEmailAddress -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Revoke-OptInConsentForEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**| Email address to revoke consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-OptInConsentForEmailAddress"></a>
# **Send-OptInConsentForEmailAddress**
> OptInConsentSendResult Send-OptInConsentForEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OptInConsentOptions] <PSCustomObject><br>

Send a verification code to a user once they have explicitly submitted their email address

Send double-opt in consent for an email address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$OptInConsentOptions = (Initialize-OptInConsentOptions -EmailAddress "EmailAddress_example" -CompanyName "CompanyName_example" -SendOptInOptions (Initialize-SendOptInConsentEmailOptions -TemplateHtml "TemplateHtml_example" -Subject "Subject_example" -SenderInbox "SenderInbox_example")) # OptInConsentOptions | 

# Send a verification code to a user once they have explicitly submitted their email address
try {
     $Result = Send-OptInConsentForEmailAddress -OptInConsentOptions $OptInConsentOptions
} catch {
    Write-Host ("Exception occured when calling Send-OptInConsentForEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OptInConsentOptions** | [**OptInConsentOptions**](OptInConsentOptions)|  | 

### Return type

[**OptInConsentSendResult**](OptInConsentSendResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

