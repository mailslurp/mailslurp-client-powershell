# maislurp-client-powershell.maislurp-client-powershell/Api.MFAControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-TotpDeviceForBase32SecretKey**](MFAControllerApi#New-TotpDeviceForBase32SecretKey) | **POST** /mfa/totp/device/base32SecretKey | Create a TOTP device from an base32 secret key
[**New-TotpDeviceForCustom**](MFAControllerApi#New-TotpDeviceForCustom) | **POST** /mfa/totp/device/custom | Create a TOTP device from custom options
[**New-TotpDeviceForOtpAuthUrl**](MFAControllerApi#New-TotpDeviceForOtpAuthUrl) | **POST** /mfa/totp/device/otpAuthUrl | Create a TOTP device from an OTP Auth URL
[**Invoke-DeleteTotpDevice**](MFAControllerApi#Invoke-DeleteTotpDevice) | **DELETE** /mfa/totp/device/{id} | Delete a TOTP device
[**Get-TotpDevice**](MFAControllerApi#Get-TotpDevice) | **GET** /mfa/totp/device/{id} | Get a TOTP device by ID
[**Get-TotpDeviceBy**](MFAControllerApi#Get-TotpDeviceBy) | **GET** /mfa/totp/device/by | Get a TOTP device by username, issuer, or name. Returns empty if not found.
[**Get-TotpDeviceCode**](MFAControllerApi#Get-TotpDeviceCode) | **GET** /mfa/totp/device/{id}/code | Get a TOTP device code by device ID
[**Get-TotpDevices**](MFAControllerApi#Get-TotpDevices) | **GET** /mfa/totp/device | List TOTP devices
[**Update-TotpDevice**](MFAControllerApi#Update-TotpDevice) | **PUT** /mfa/totp/device/{id} | Update a TOTP device


<a name="New-TotpDeviceForBase32SecretKey"></a>
# **New-TotpDeviceForBase32SecretKey**
> TotpDeviceDto New-TotpDeviceForBase32SecretKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceBase32SecretKeyOptions] <PSCustomObject><br>

Create a TOTP device from an base32 secret key

Create a virtual TOTP device for a given secret key. This is usually present as an alternative login option when pairing OTP devices.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTotpDeviceBase32SecretKeyOptions = (Initialize-CreateTotpDeviceBase32SecretKeyOptions -Base32SecretKey "Base32SecretKey_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceBase32SecretKeyOptions | 

# Create a TOTP device from an base32 secret key
try {
     $Result = New-TotpDeviceForBase32SecretKey -CreateTotpDeviceBase32SecretKeyOptions $CreateTotpDeviceBase32SecretKeyOptions
} catch {
    Write-Host ("Exception occured when calling New-TotpDeviceForBase32SecretKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceBase32SecretKeyOptions** | [**CreateTotpDeviceBase32SecretKeyOptions**](CreateTotpDeviceBase32SecretKeyOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-TotpDeviceForCustom"></a>
# **New-TotpDeviceForCustom**
> TotpDeviceDto New-TotpDeviceForCustom<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceCustomOptions] <PSCustomObject><br>

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

$CreateTotpDeviceCustomOptions = (Initialize-CreateTotpDeviceCustomOptions -Secret "Secret_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceCustomOptions | 

# Create a TOTP device from custom options
try {
     $Result = New-TotpDeviceForCustom -CreateTotpDeviceCustomOptions $CreateTotpDeviceCustomOptions
} catch {
    Write-Host ("Exception occured when calling New-TotpDeviceForCustom: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceCustomOptions** | [**CreateTotpDeviceCustomOptions**](CreateTotpDeviceCustomOptions)|  | 

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

<a name="Invoke-DeleteTotpDevice"></a>
# **Invoke-DeleteTotpDevice**
> void Invoke-DeleteTotpDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete a TOTP device

Delete a Time-Based One-Time Password (TOTP) device by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete a TOTP device
try {
     $Result = Invoke-DeleteTotpDevice -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteTotpDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-TotpDevices"></a>
# **Get-TotpDevices**
> PageTotpDeviceProjection Get-TotpDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Issuer] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

List TOTP devices

List Time-Based One-Time Password (TOTP) devices for the calling account.

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
$Issuer = "Issuer_example" # String | Optional issuer filter (optional)
$Username = "Username_example" # String | Optional username filter (optional)

# List TOTP devices
try {
     $Result = Get-TotpDevices -Page $Page -Size $Size -Sort $Sort -Issuer $Issuer -Username $Username
} catch {
    Write-Host ("Exception occured when calling Get-TotpDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for paginated result list. | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]
 **Issuer** | **String**| Optional issuer filter | [optional] 
 **Username** | **String**| Optional username filter | [optional] 

### Return type

[**PageTotpDeviceProjection**](PageTotpDeviceProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-TotpDevice"></a>
# **Update-TotpDevice**
> TotpDeviceDto Update-TotpDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateTotpDeviceOptions] <PSCustomObject><br>

Update a TOTP device

Update stored metadata and TOTP settings for a device by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$UpdateTotpDeviceOptions = (Initialize-UpdateTotpDeviceOptions -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # UpdateTotpDeviceOptions | 

# Update a TOTP device
try {
     $Result = Update-TotpDevice -Id $Id -UpdateTotpDeviceOptions $UpdateTotpDeviceOptions
} catch {
    Write-Host ("Exception occured when calling Update-TotpDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **UpdateTotpDeviceOptions** | [**UpdateTotpDeviceOptions**](UpdateTotpDeviceOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

