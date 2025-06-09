# maislurp-client-powershell.maislurp-client-powershell/Api.MFAControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-TotpDeviceForCustom**](MFAControllerApi#New-TotpDeviceForCustom) | **POST** /mfa/totp/device/custom | Create a TOTP device from custom options
[**New-TotpDeviceForOtpAuthUrl**](MFAControllerApi#New-TotpDeviceForOtpAuthUrl) | **POST** /mfa/totp/device/otpAuthUrl | Create a TOTP device from an OTP Auth URL
[**Get-TotpDevice**](MFAControllerApi#Get-TotpDevice) | **GET** /mfa/totp/device/{id} | Get a TOTP device by ID
[**Get-TotpDeviceBy**](MFAControllerApi#Get-TotpDeviceBy) | **GET** /mfa/totp/device/by | Get a TOTP device by username, issuer, or name. Returns empty if not found.
[**Get-TotpDeviceCode**](MFAControllerApi#Get-TotpDeviceCode) | **GET** /mfa/totp/device/{id}/code | Get a TOTP device code by device ID


<a name="New-TotpDeviceForCustom"></a>
# **New-TotpDeviceForCustom**
> TotpDeviceDto New-TotpDeviceForCustom<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceOtpAuthUrlOptions] <PSCustomObject><br>

Create a TOTP device from custom options

Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTotpDeviceOtpAuthUrlOptions = (Initialize-CreateTotpDeviceOtpAuthUrlOptions -OtpAuthUrl "OtpAuthUrl_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceOtpAuthUrlOptions | 

# Create a TOTP device from custom options
try {
     $Result = New-TotpDeviceForCustom -CreateTotpDeviceOtpAuthUrlOptions $CreateTotpDeviceOtpAuthUrlOptions
} catch {
    Write-Host ("Exception occured when calling New-TotpDeviceForCustom: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-TotpDeviceForOtpAuthUrl"></a>
# **New-TotpDeviceForOtpAuthUrl**
> TotpDeviceDto New-TotpDeviceForOtpAuthUrl<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceOtpAuthUrlOptions] <PSCustomObject><br>

Create a TOTP device from an OTP Auth URL

Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTotpDeviceOtpAuthUrlOptions = (Initialize-CreateTotpDeviceOtpAuthUrlOptions -OtpAuthUrl "OtpAuthUrl_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceOtpAuthUrlOptions | 

# Create a TOTP device from an OTP Auth URL
try {
     $Result = New-TotpDeviceForOtpAuthUrl -CreateTotpDeviceOtpAuthUrlOptions $CreateTotpDeviceOtpAuthUrlOptions
} catch {
    Write-Host ("Exception occured when calling New-TotpDeviceForOtpAuthUrl: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TotpDevice"></a>
# **Get-TotpDevice**
> TotpDeviceDto Get-TotpDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get a TOTP device by ID

Get Time-Based One-Time Password (TOTP) device by its ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get a TOTP device by ID
try {
     $Result = Get-TotpDevice -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-TotpDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TotpDeviceBy"></a>
# **Get-TotpDeviceBy**
> TotpDeviceOptionalDto Get-TotpDeviceBy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Issuer] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Get a TOTP device by username, issuer, or name. Returns empty if not found.

Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | Optional name filter (optional)
$Issuer = "Issuer_example" # String | Optional issuer filter (optional)
$Username = "Username_example" # String | Optional username filter (optional)

# Get a TOTP device by username, issuer, or name. Returns empty if not found.
try {
     $Result = Get-TotpDeviceBy -Name $Name -Issuer $Issuer -Username $Username
} catch {
    Write-Host ("Exception occured when calling Get-TotpDeviceBy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Optional name filter | [optional] 
 **Issuer** | **String**| Optional issuer filter | [optional] 
 **Username** | **String**| Optional username filter | [optional] 

### Return type

[**TotpDeviceOptionalDto**](TotpDeviceOptionalDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TotpDeviceCode"></a>
# **Get-TotpDeviceCode**
> TotpDeviceCodeDto Get-TotpDeviceCode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-At] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinSecondsUntilExpire] <System.Nullable[Int32]><br>

Get a TOTP device code by device ID

Get Time-Based One-Time Password for a device by its ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of the TOTP device to get the code for
$At = Get-Date # System.DateTime | Optional time to get code for. If not provided, current time is used. (optional)
$MinSecondsUntilExpire = 987 # Int32 | Optional minimum time until code expires. Will hold thread open until period reached. (optional) (default to 5)

# Get a TOTP device code by device ID
try {
     $Result = Get-TotpDeviceCode -Id $Id -At $At -MinSecondsUntilExpire $MinSecondsUntilExpire
} catch {
    Write-Host ("Exception occured when calling Get-TotpDeviceCode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of the TOTP device to get the code for | 
 **At** | **System.DateTime**| Optional time to get code for. If not provided, current time is used. | [optional] 
 **MinSecondsUntilExpire** | **Int32**| Optional minimum time until code expires. Will hold thread open until period reached. | [optional] [default to 5]

### Return type

[**TotpDeviceCodeDto**](TotpDeviceCodeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

