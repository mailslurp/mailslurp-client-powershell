# maislurp-client-powershell.maislurp-client-powershell/Api.EmailVerificationControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteAllValidationRequests**](EmailVerificationControllerApi#Invoke-DeleteAllValidationRequests) | **DELETE** /email-verification | Delete all validation requests
[**Invoke-DeleteValidationRequest**](EmailVerificationControllerApi#Invoke-DeleteValidationRequest) | **DELETE** /email-verification/{id} | Delete a validation record
[**Get-ValidationRequests**](EmailVerificationControllerApi#Get-ValidationRequests) | **GET** /email-verification/validation-requests | Validate a list of email addresses. Per unit billing. See your plan for pricing.
[**Confirm-EmailAddressList**](EmailVerificationControllerApi#Confirm-EmailAddressList) | **POST** /email-verification/email-address-list | Validate a list of email addresses. Per unit billing. See your plan for pricing.


<a name="Invoke-DeleteAllValidationRequests"></a>
# **Invoke-DeleteAllValidationRequests**
> void Invoke-DeleteAllValidationRequests<br>

Delete all validation requests

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all validation requests
try {
     $Result = Invoke-DeleteAllValidationRequests
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllValidationRequests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteValidationRequest"></a>
# **Invoke-DeleteValidationRequest**
> void Invoke-DeleteValidationRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete a validation record

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete a validation record
try {
     $Result = Invoke-DeleteValidationRequest -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteValidationRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ValidationRequests"></a>
# **Get-ValidationRequests**
> PageEmailValidationRequest Get-ValidationRequests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsValid] <System.Nullable[Boolean]><br>

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for paginated result list. (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$IsValid = true # Boolean | Filter where email is valid is true or false (optional)

# Validate a list of email addresses. Per unit billing. See your plan for pricing.
try {
     $Result = Get-ValidationRequests -Page $Page -Size $Size -Sort $Sort -SearchFilter $SearchFilter -Since $Since -Before $Before -IsValid $IsValid
} catch {
    Write-Host ("Exception occured when calling Get-ValidationRequests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **IsValid** | **Boolean**| Filter where email is valid is true or false | [optional] 

### Return type

[**PageEmailValidationRequest**](PageEmailValidationRequest) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Confirm-EmailAddressList"></a>
# **Confirm-EmailAddressList**
> ValidateEmailAddressListResult Confirm-EmailAddressList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidateEmailAddressListOptions] <PSCustomObject><br>

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ValidateEmailAddressListOptions = (Initialize-ValidateEmailAddressListOptions -EmailAddressList @("EmailAddressList_example") -IgnoreOldResults $false) # ValidateEmailAddressListOptions | 

# Validate a list of email addresses. Per unit billing. See your plan for pricing.
try {
     $Result = Confirm-EmailAddressList -ValidateEmailAddressListOptions $ValidateEmailAddressListOptions
} catch {
    Write-Host ("Exception occured when calling Confirm-EmailAddressList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ValidateEmailAddressListOptions** | [**ValidateEmailAddressListOptions**](ValidateEmailAddressListOptions)|  | 

### Return type

[**ValidateEmailAddressListResult**](ValidateEmailAddressListResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

