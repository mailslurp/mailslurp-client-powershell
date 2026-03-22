# maislurp-client-powershell.maislurp-client-powershell/Api.PhoneControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Read-PhonePoolLease**](PhoneControllerApi#Read-PhonePoolLease) | **POST** /phone/pools/{poolId}/leases | Acquire phone pool lease
[**Add-AllPhoneNumbersToPhonePool**](PhoneControllerApi#Add-AllPhoneNumbersToPhonePool) | **POST** /phone/pools/{poolId}/numbers/add-all | Add all phone numbers to phone pool
[**Add-PhoneNumbersToPhonePool**](PhoneControllerApi#Add-PhoneNumbersToPhonePool) | **POST** /phone/pools/{poolId}/numbers | Add phone numbers to phone pool
[**New-EmergencyAddress**](PhoneControllerApi#New-EmergencyAddress) | **POST** /phone/emergency-addresses | Create an emergency address
[**New-PhoneNumber**](PhoneControllerApi#New-PhoneNumber) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**New-PhonePool**](PhoneControllerApi#New-PhonePool) | **POST** /phone/pools | Create phone pool
[**New-PhoneProvisioningJob**](PhoneControllerApi#New-PhoneProvisioningJob) | **POST** /phone/provisioning/jobs | Create a phone provisioning job
[**Invoke-DeleteAllPhoneNumber**](PhoneControllerApi#Invoke-DeleteAllPhoneNumber) | **DELETE** /phone/numbers | Delete all phone numbers
[**Invoke-DeleteEmergencyAddress**](PhoneControllerApi#Invoke-DeleteEmergencyAddress) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**Invoke-DeletePhoneMessageThreadItems**](PhoneControllerApi#Invoke-DeletePhoneMessageThreadItems) | **DELETE** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Delete messages in a phone thread
[**Invoke-DeletePhoneNumber**](PhoneControllerApi#Invoke-DeletePhoneNumber) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**Invoke-DeletePhonePool**](PhoneControllerApi#Invoke-DeletePhonePool) | **DELETE** /phone/pools/{poolId} | Delete phone pool
[**Get-AllPhoneMessageThreads**](PhoneControllerApi#Get-AllPhoneMessageThreads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**Get-AllPhoneNumberReleases**](PhoneControllerApi#Get-AllPhoneNumberReleases) | **GET** /phone/releases | Get all phone number releases
[**Get-ConsentStatus**](PhoneControllerApi#Get-ConsentStatus) | **GET** /phone/consent | Get consent status
[**Get-EmergencyAddress**](PhoneControllerApi#Get-EmergencyAddress) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**Get-EmergencyAddresses**](PhoneControllerApi#Get-EmergencyAddresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**Get-OrCreatePhonePool**](PhoneControllerApi#Get-OrCreatePhonePool) | **POST** /phone/pools/get-or-create | Get or create phone pool
[**Get-PhoneMessageThreadItems**](PhoneControllerApi#Get-PhoneMessageThreadItems) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**Get-PhoneMessageThreads**](PhoneControllerApi#Get-PhoneMessageThreads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**Get-PhoneNumber**](PhoneControllerApi#Get-PhoneNumber) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**Get-PhoneNumberByName**](PhoneControllerApi#Get-PhoneNumberByName) | **GET** /phone/numbers/by-name | Get a phone number by name
[**Get-PhoneNumberByPhoneNumber**](PhoneControllerApi#Get-PhoneNumberByPhoneNumber) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**Get-PhoneNumberLineTypeIntelligence**](PhoneControllerApi#Get-PhoneNumberLineTypeIntelligence) | **POST** /phone/validate/line-type-intelligence | Get line type intelligence for a phone number
[**Get-PhoneNumberRelease**](PhoneControllerApi#Get-PhoneNumberRelease) | **GET** /phone/releases/{releaseId} | Get phone number release
[**Get-PhoneNumbers**](PhoneControllerApi#Get-PhoneNumbers) | **GET** /phone/numbers | Get phone numbers
[**Get-PhonePlans**](PhoneControllerApi#Get-PhonePlans) | **GET** /phone/plans | Get phone plans
[**Get-PhonePlansAvailability**](PhoneControllerApi#Get-PhonePlansAvailability) | **GET** /phone/plans/availability | Get phone plans availability
[**Get-PhonePool**](PhoneControllerApi#Get-PhonePool) | **GET** /phone/pools/{poolId} | Get phone pool
[**Get-PhonePoolByName**](PhoneControllerApi#Get-PhonePoolByName) | **GET** /phone/pools/by-name | Get phone pool by name
[**Get-PhonePools**](PhoneControllerApi#Get-PhonePools) | **GET** /phone/pools | Get phone pools
[**Get-PhoneProvisioningCapabilities**](PhoneControllerApi#Get-PhoneProvisioningCapabilities) | **GET** /phone/provisioning/capabilities | Get phone provisioning capabilities
[**Get-PhoneProvisioningJob**](PhoneControllerApi#Get-PhoneProvisioningJob) | **GET** /phone/provisioning/jobs/{jobId} | Get phone provisioning job
[**Get-PhoneSmsPrepaidCredit**](PhoneControllerApi#Get-PhoneSmsPrepaidCredit) | **GET** /phone/sms-prepaid-credits/{creditId} | Get SMS prepaid credit
[**Get-PhoneSmsPrepaidCredits**](PhoneControllerApi#Get-PhoneSmsPrepaidCredits) | **GET** /phone/sms-prepaid-credits | Get SMS prepaid credits
[**Get-PhoneSummary**](PhoneControllerApi#Get-PhoneSummary) | **GET** /phone/summary | Get phone summary
[**Get-SentSmsByPhoneNumber**](PhoneControllerApi#Get-SentSmsByPhoneNumber) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**Get-SmsByPhoneNumber**](PhoneControllerApi#Get-SmsByPhoneNumber) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**Invoke-ReassignPhoneNumberRelease**](PhoneControllerApi#Invoke-ReassignPhoneNumberRelease) | **GET** /phone/releases/{releaseId}/reassign | Reassign phone number release
[**Clear-PhonePoolLease**](PhoneControllerApi#Clear-PhonePoolLease) | **DELETE** /phone/pools/{poolId}/leases/{leaseId} | Release phone pool lease
[**Remove-PhoneNumberFromPhonePool**](PhoneControllerApi#Remove-PhoneNumberFromPhonePool) | **DELETE** /phone/pools/{poolId}/numbers/{phoneNumberId} | Remove phone number from phone pool
[**Search-AvailablePhoneNumbers**](PhoneControllerApi#Search-AvailablePhoneNumbers) | **POST** /phone/provisioning/search | Search available phone numbers
[**Send-SmsFromPhoneNumber**](PhoneControllerApi#Send-SmsFromPhoneNumber) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**Set-ConsentStatus**](PhoneControllerApi#Set-ConsentStatus) | **POST** /phone/consent | Set consent status
[**Set-PhoneFavourited**](PhoneControllerApi#Set-PhoneFavourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**Test-PhoneNumberSendSms**](PhoneControllerApi#Test-PhoneNumberSendSms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**Update-PhoneNumber**](PhoneControllerApi#Update-PhoneNumber) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**Update-PhonePool**](PhoneControllerApi#Update-PhonePool) | **PUT** /phone/pools/{poolId} | Update phone pool
[**Confirm-PhoneNumber**](PhoneControllerApi#Confirm-PhoneNumber) | **POST** /phone/validate | Verify validity of a phone number


<a name="Read-PhonePoolLease"></a>
# **Read-PhonePoolLease**
> PhonePoolLeaseDto Read-PhonePoolLease<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcquirePhonePoolLeaseOptions] <PSCustomObject><br>

Acquire phone pool lease

Acquire an available phone number from the pool and mark it leased

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 
$AcquirePhonePoolLeaseOptions = (Initialize-AcquirePhonePoolLeaseOptions -LeaseName "LeaseName_example" -LeaseOwner "LeaseOwner_example" -LeaseDurationMillis 123 -AcquireTimeoutMillis 123) # AcquirePhonePoolLeaseOptions | 

# Acquire phone pool lease
try {
     $Result = Read-PhonePoolLease -PoolId $PoolId -AcquirePhonePoolLeaseOptions $AcquirePhonePoolLeaseOptions
} catch {
    Write-Host ("Exception occured when calling Read-PhonePoolLease: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 
 **AcquirePhonePoolLeaseOptions** | [**AcquirePhonePoolLeaseOptions**](AcquirePhonePoolLeaseOptions)|  | 

### Return type

[**PhonePoolLeaseDto**](PhonePoolLeaseDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Add-AllPhoneNumbersToPhonePool"></a>
# **Add-AllPhoneNumbersToPhonePool**
> PhonePoolDetailDto Add-AllPhoneNumbersToPhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>

Add all phone numbers to phone pool

Add all active owned phone numbers to a pool

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 

# Add all phone numbers to phone pool
try {
     $Result = Add-AllPhoneNumbersToPhonePool -PoolId $PoolId
} catch {
    Write-Host ("Exception occured when calling Add-AllPhoneNumbersToPhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Add-PhoneNumbersToPhonePool"></a>
# **Add-PhoneNumbersToPhonePool**
> PhonePoolDetailDto Add-PhoneNumbersToPhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddPhonePoolNumbersOptions] <PSCustomObject><br>

Add phone numbers to phone pool

Add one or more owned phone numbers to a pool

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 
$AddPhonePoolNumbersOptions = (Initialize-AddPhonePoolNumbersOptions -PhoneNumberIds @("PhoneNumberIds_example")) # AddPhonePoolNumbersOptions | 

# Add phone numbers to phone pool
try {
     $Result = Add-PhoneNumbersToPhonePool -PoolId $PoolId -AddPhonePoolNumbersOptions $AddPhonePoolNumbersOptions
} catch {
    Write-Host ("Exception occured when calling Add-PhoneNumbersToPhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 
 **AddPhonePoolNumbersOptions** | [**AddPhonePoolNumbersOptions**](AddPhonePoolNumbersOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-EmergencyAddress"></a>
# **New-EmergencyAddress**
> EmergencyAddress New-EmergencyAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateEmergencyAddressOptions] <PSCustomObject><br>

Create an emergency address

Add an emergency address to a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateEmergencyAddressOptions = (Initialize-CreateEmergencyAddressOptions -CustomerName "CustomerName_example" -Address1 "Address1_example" -City "City_example" -Region "Region_example" -PostalCode "PostalCode_example" -IsoCountryCode "US" -DisplayName "DisplayName_example") # CreateEmergencyAddressOptions | 

# Create an emergency address
try {
     $Result = New-EmergencyAddress -CreateEmergencyAddressOptions $CreateEmergencyAddressOptions
} catch {
    Write-Host ("Exception occured when calling New-EmergencyAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateEmergencyAddressOptions** | [**CreateEmergencyAddressOptions**](CreateEmergencyAddressOptions)|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-PhoneNumber"></a>
# **New-PhoneNumber**
> PhoneNumberDto New-PhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePhoneNumberOptions] <PSCustomObject><br>

Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.

Create new phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreatePhoneNumberOptions = (Initialize-CreatePhoneNumberOptions -PhoneCountry "US" -Name "Name_example" -Description "Description_example" -Schedule "MONTHLY" -PhoneNumberEndpointOverride "PhoneNumberEndpointOverride_example" -PhoneNumberVariant "LOCAL" -PhoneProvider "TWILIO") # CreatePhoneNumberOptions | 

# Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
try {
     $Result = New-PhoneNumber -CreatePhoneNumberOptions $CreatePhoneNumberOptions
} catch {
    Write-Host ("Exception occured when calling New-PhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePhoneNumberOptions** | [**CreatePhoneNumberOptions**](CreatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-PhonePool"></a>
# **New-PhonePool**
> PhonePoolDetailDto New-PhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePhonePoolOptions] <PSCustomObject><br>

Create phone pool

Create a reusable pool of phone numbers for coordinated leasing

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreatePhonePoolOptions = (Initialize-CreatePhonePoolOptions -Name "Name_example" -Description "Description_example") # CreatePhonePoolOptions | 

# Create phone pool
try {
     $Result = New-PhonePool -CreatePhonePoolOptions $CreatePhonePoolOptions
} catch {
    Write-Host ("Exception occured when calling New-PhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePhonePoolOptions** | [**CreatePhonePoolOptions**](CreatePhonePoolOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-PhoneProvisioningJob"></a>
# **New-PhoneProvisioningJob**
> PhoneProvisioningJobDto New-PhoneProvisioningJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePhoneProvisioningJobOptions] <PSCustomObject><br>

Create a phone provisioning job

Create an advanced phone provisioning job from shortlisted numbers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreatePhoneProvisioningJobOptions = (Initialize-CreatePhoneProvisioningJobOptions -PhoneCountry "US" -PhoneVariant "LOCAL" -Items @((Initialize-CreatePhoneProvisioningJobItemOptions -PhoneNumber "PhoneNumber_example" -ProviderLabel "ProviderLabel_example" -LineType "LineType_example" -CarrierName "CarrierName_example" -MobileCountryCode "MobileCountryCode_example" -MobileNetworkCode "MobileNetworkCode_example"))) # CreatePhoneProvisioningJobOptions | 

# Create a phone provisioning job
try {
     $Result = New-PhoneProvisioningJob -CreatePhoneProvisioningJobOptions $CreatePhoneProvisioningJobOptions
} catch {
    Write-Host ("Exception occured when calling New-PhoneProvisioningJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePhoneProvisioningJobOptions** | [**CreatePhoneProvisioningJobOptions**](CreatePhoneProvisioningJobOptions)|  | 

### Return type

[**PhoneProvisioningJobDto**](PhoneProvisioningJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllPhoneNumber"></a>
# **Invoke-DeleteAllPhoneNumber**
> void Invoke-DeleteAllPhoneNumber<br>

Delete all phone numbers

Remove all phone number from account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all phone numbers
try {
     $Result = Invoke-DeleteAllPhoneNumber
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteEmergencyAddress"></a>
# **Invoke-DeleteEmergencyAddress**
> EmptyResponseDto Invoke-DeleteEmergencyAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddressId] <PSCustomObject><br>

Delete an emergency address

Delete an emergency address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AddressId = "AddressId_example" # String | 

# Delete an emergency address
try {
     $Result = Invoke-DeleteEmergencyAddress -AddressId $AddressId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteEmergencyAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AddressId** | [**String**](String)|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeletePhoneMessageThreadItems"></a>
# **Invoke-DeletePhoneMessageThreadItems**
> EmptyResponseDto Invoke-DeletePhoneMessageThreadItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OtherNumber] <String><br>

Delete messages in a phone thread

Delete all messages in an SMS thread

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$OtherNumber = "OtherNumber_example" # String | 

# Delete messages in a phone thread
try {
     $Result = Invoke-DeletePhoneMessageThreadItems -PhoneNumberId $PhoneNumberId -OtherNumber $OtherNumber
} catch {
    Write-Host ("Exception occured when calling Invoke-DeletePhoneMessageThreadItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **OtherNumber** | **String**|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeletePhoneNumber"></a>
# **Invoke-DeletePhoneNumber**
> void Invoke-DeletePhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>

Delete a phone number

Remove phone number from account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 

# Delete a phone number
try {
     $Result = Invoke-DeletePhoneNumber -PhoneNumberId $PhoneNumberId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeletePhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeletePhonePool"></a>
# **Invoke-DeletePhonePool**
> void Invoke-DeletePhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>

Delete phone pool

Delete a phone pool and release any active leases from that pool

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 

# Delete phone pool
try {
     $Result = Invoke-DeletePhonePool -PoolId $PoolId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeletePhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllPhoneMessageThreads"></a>
# **Get-AllPhoneMessageThreads**
> PagePhoneMessageThreadProjection Get-AllPhoneMessageThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

Get the latest messages for all phones

List all message threads for all phones

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)

# Get the latest messages for all phones
try {
     $Result = Get-AllPhoneMessageThreads -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Get-AllPhoneMessageThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllPhoneNumberReleases"></a>
# **Get-AllPhoneNumberReleases**
> PagePhoneNumberReleaseProjection Get-AllPhoneNumberReleases<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get all phone number releases

List released or deleted phone numbers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "DESC")

# Get all phone number releases
try {
     $Result = Get-AllPhoneNumberReleases -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllPhoneNumberReleases: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;DESC&quot;]

### Return type

[**PagePhoneNumberReleaseProjection**](PagePhoneNumberReleaseProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConsentStatus"></a>
# **Get-ConsentStatus**
> ConsentStatusDto Get-ConsentStatus<br>

Get consent status

Get the status of phone usage consent

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get consent status
try {
     $Result = Get-ConsentStatus
} catch {
    Write-Host ("Exception occured when calling Get-ConsentStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConsentStatusDto**](ConsentStatusDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmergencyAddress"></a>
# **Get-EmergencyAddress**
> EmergencyAddress Get-EmergencyAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddressId] <PSCustomObject><br>

Get an emergency address

Fetch an emergency address by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AddressId = "AddressId_example" # String | 

# Get an emergency address
try {
     $Result = Get-EmergencyAddress -AddressId $AddressId
} catch {
    Write-Host ("Exception occured when calling Get-EmergencyAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AddressId** | [**String**](String)|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmergencyAddresses"></a>
# **Get-EmergencyAddresses**
> EmergencyAddressDto[] Get-EmergencyAddresses<br>

Get emergency addresses

List emergency addresses

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get emergency addresses
try {
     $Result = Get-EmergencyAddresses
} catch {
    Write-Host ("Exception occured when calling Get-EmergencyAddresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmergencyAddressDto[]**](EmergencyAddressDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-OrCreatePhonePool"></a>
# **Get-OrCreatePhonePool**
> PhonePoolDetailDto Get-OrCreatePhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GetOrCreatePhonePoolOptions] <PSCustomObject><br>

Get or create phone pool

Get a phone pool by name or create it if it does not exist

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GetOrCreatePhonePoolOptions = (Initialize-GetOrCreatePhonePoolOptions -Name "Name_example" -Description "Description_example") # GetOrCreatePhonePoolOptions | 

# Get or create phone pool
try {
     $Result = Get-OrCreatePhonePool -GetOrCreatePhonePoolOptions $GetOrCreatePhonePoolOptions
} catch {
    Write-Host ("Exception occured when calling Get-OrCreatePhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GetOrCreatePhonePoolOptions** | [**GetOrCreatePhonePoolOptions**](GetOrCreatePhonePoolOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneMessageThreadItems"></a>
# **Get-PhoneMessageThreadItems**
> PagePhoneMessageThreadItemProjection Get-PhoneMessageThreadItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OtherNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

Get messages in a phone thread

List message thread messages for a phone message thread

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$OtherNumber = "OtherNumber_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)

# Get messages in a phone thread
try {
     $Result = Get-PhoneMessageThreadItems -PhoneNumberId $PhoneNumberId -OtherNumber $OtherNumber -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Get-PhoneMessageThreadItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **OtherNumber** | **String**|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadItemProjection**](PagePhoneMessageThreadItemProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneMessageThreads"></a>
# **Get-PhoneMessageThreads**
> PagePhoneMessageThreadProjection Get-PhoneMessageThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

Get the latest message preview for a thread

List message threads for a phone

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)

# Get the latest message preview for a thread
try {
     $Result = Get-PhoneMessageThreads -PhoneNumberId $PhoneNumberId -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Get-PhoneMessageThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumber"></a>
# **Get-PhoneNumber**
> PhoneNumberDto Get-PhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>

Get a phone number by ID

Get a phone number by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 

# Get a phone number by ID
try {
     $Result = Get-PhoneNumber -PhoneNumberId $PhoneNumberId
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumberByName"></a>
# **Get-PhoneNumberByName**
> PhoneNumberDto Get-PhoneNumberByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get a phone number by name

Get a phone number by name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | 

# Get a phone number by name
try {
     $Result = Get-PhoneNumberByName -Name $Name
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumberByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumberByPhoneNumber"></a>
# **Get-PhoneNumberByPhoneNumber**
> PhoneNumberDto Get-PhoneNumberByPhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumber] <String><br>

Get a phone number by phone number

Get a phone number by phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumber = "PhoneNumber_example" # String | 

# Get a phone number by phone number
try {
     $Result = Get-PhoneNumberByPhoneNumber -PhoneNumber $PhoneNumber
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumberByPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumber** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumberLineTypeIntelligence"></a>
# **Get-PhoneNumberLineTypeIntelligence**
> PhoneNumberLineTypeLookupDto Get-PhoneNumberLineTypeIntelligence<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidatePhoneNumberOptions] <PSCustomObject><br>

Get line type intelligence for a phone number

Lookup line type intelligence for a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ValidatePhoneNumberOptions = (Initialize-ValidatePhoneNumberOptions -PhoneNumber "PhoneNumber_example") # ValidatePhoneNumberOptions | 

# Get line type intelligence for a phone number
try {
     $Result = Get-PhoneNumberLineTypeIntelligence -ValidatePhoneNumberOptions $ValidatePhoneNumberOptions
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumberLineTypeIntelligence: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ValidatePhoneNumberOptions** | [**ValidatePhoneNumberOptions**](ValidatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberLineTypeLookupDto**](PhoneNumberLineTypeLookupDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumberRelease"></a>
# **Get-PhoneNumberRelease**
> PhoneNumberReleaseProjection Get-PhoneNumberRelease<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReleaseId] <PSCustomObject><br>

Get phone number release

Get a released or deleted phone numbers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ReleaseId = "ReleaseId_example" # String | 

# Get phone number release
try {
     $Result = Get-PhoneNumberRelease -ReleaseId $ReleaseId
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumberRelease: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReleaseId** | [**String**](String)|  | 

### Return type

[**PhoneNumberReleaseProjection**](PhoneNumberReleaseProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneNumbers"></a>
# **Get-PhoneNumbers**
> PagePhoneNumberProjection Get-PhoneNumbers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneCountry] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LineType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CarrierName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MobileCountryCode] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MobileNetworkCode] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>

Get phone numbers

List phone numbers for account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneCountry = "US" # String | Optional phone country (optional)
$LineType = "LineType_example" # String | Optional line type filter (optional)
$CarrierName = "CarrierName_example" # String | Optional carrier name filter (optional)
$MobileCountryCode = "MobileCountryCode_example" # String | Optional mobile country code filter (optional)
$MobileNetworkCode = "MobileNetworkCode_example" # String | Optional mobile network code filter (optional)
$ProviderLabel = "ProviderLabel_example" # String | Optional provider label filter such as T1 or T2 (optional)
$Page = 987 # Int32 | Optional page index for list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size for list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$Search = "Search_example" # String | Optional search filter (optional)
$Include = @("Inner_example") # String[] | Optional phoneIds to include in result (optional)
$Favourite = true # Boolean | Optionally filter results for favourites only (optional) (default to $false)

# Get phone numbers
try {
     $Result = Get-PhoneNumbers -PhoneCountry $PhoneCountry -LineType $LineType -CarrierName $CarrierName -MobileCountryCode $MobileCountryCode -MobileNetworkCode $MobileNetworkCode -ProviderLabel $ProviderLabel -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search -Include $Include -Favourite $Favourite
} catch {
    Write-Host ("Exception occured when calling Get-PhoneNumbers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneCountry** | **String**| Optional phone country | [optional] 
 **LineType** | **String**| Optional line type filter | [optional] 
 **CarrierName** | **String**| Optional carrier name filter | [optional] 
 **MobileCountryCode** | **String**| Optional mobile country code filter | [optional] 
 **MobileNetworkCode** | **String**| Optional mobile network code filter | [optional] 
 **ProviderLabel** | **String**| Optional provider label filter such as T1 or T2 | [optional] 
 **Page** | **Int32**| Optional page index for list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size for list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **Search** | **String**| Optional search filter | [optional] 
 **Include** | [**String[]**](String)| Optional phoneIds to include in result | [optional] 
 **Favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to $false]

### Return type

[**PagePhoneNumberProjection**](PagePhoneNumberProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhonePlans"></a>
# **Get-PhonePlans**
> PhonePlanDto[] Get-PhonePlans<br>

Get phone plans

Get phone number plans

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get phone plans
try {
     $Result = Get-PhonePlans
} catch {
    Write-Host ("Exception occured when calling Get-PhonePlans: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhonePlanDto[]**](PhonePlanDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhonePlansAvailability"></a>
# **Get-PhonePlansAvailability**
> PhonePlanAvailability Get-PhonePlansAvailability<br>

Get phone plans availability

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get phone plans availability
try {
     $Result = Get-PhonePlansAvailability
} catch {
    Write-Host ("Exception occured when calling Get-PhonePlansAvailability: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhonePlanAvailability**](PhonePlanAvailability) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhonePool"></a>
# **Get-PhonePool**
> PhonePoolDetailDto Get-PhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>

Get phone pool

Get phone pool details by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 

# Get phone pool
try {
     $Result = Get-PhonePool -PoolId $PoolId
} catch {
    Write-Host ("Exception occured when calling Get-PhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhonePoolByName"></a>
# **Get-PhonePoolByName**
> PhonePoolDetailDto Get-PhonePoolByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get phone pool by name

Get phone pool details by name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | 

# Get phone pool by name
try {
     $Result = Get-PhonePoolByName -Name $Name
} catch {
    Write-Host ("Exception occured when calling Get-PhonePoolByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhonePools"></a>
# **Get-PhonePools**
> PhonePoolDto[] Get-PhonePools<br>

Get phone pools

List phone pools for the authenticated user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get phone pools
try {
     $Result = Get-PhonePools
} catch {
    Write-Host ("Exception occured when calling Get-PhonePools: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhonePoolDto[]**](PhonePoolDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneProvisioningCapabilities"></a>
# **Get-PhoneProvisioningCapabilities**
> PhoneProviderCapabilitiesResult Get-PhoneProvisioningCapabilities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneCountry] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderLabel] <String><br>

Get phone provisioning capabilities

Get supported provider-country variant capabilities for advanced provisioning

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneCountry = "US" # String | 
$ProviderLabel = "ProviderLabel_example" # String |  (optional)

# Get phone provisioning capabilities
try {
     $Result = Get-PhoneProvisioningCapabilities -PhoneCountry $PhoneCountry -ProviderLabel $ProviderLabel
} catch {
    Write-Host ("Exception occured when calling Get-PhoneProvisioningCapabilities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneCountry** | **String**|  | 
 **ProviderLabel** | **String**|  | [optional] 

### Return type

[**PhoneProviderCapabilitiesResult**](PhoneProviderCapabilitiesResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneProvisioningJob"></a>
# **Get-PhoneProvisioningJob**
> PhoneProvisioningJobDto Get-PhoneProvisioningJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <PSCustomObject><br>

Get phone provisioning job

Get advanced phone provisioning job status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$JobId = "JobId_example" # String | 

# Get phone provisioning job
try {
     $Result = Get-PhoneProvisioningJob -JobId $JobId
} catch {
    Write-Host ("Exception occured when calling Get-PhoneProvisioningJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JobId** | [**String**](String)|  | 

### Return type

[**PhoneProvisioningJobDto**](PhoneProvisioningJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneSmsPrepaidCredit"></a>
# **Get-PhoneSmsPrepaidCredit**
> PhoneSmsPrepaidCreditDto Get-PhoneSmsPrepaidCredit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreditId] <PSCustomObject><br>

Get SMS prepaid credit

Get a specific SMS prepaid credit balance for the authenticated account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreditId = "CreditId_example" # String | 

# Get SMS prepaid credit
try {
     $Result = Get-PhoneSmsPrepaidCredit -CreditId $CreditId
} catch {
    Write-Host ("Exception occured when calling Get-PhoneSmsPrepaidCredit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreditId** | [**String**](String)|  | 

### Return type

[**PhoneSmsPrepaidCreditDto**](PhoneSmsPrepaidCreditDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneSmsPrepaidCredits"></a>
# **Get-PhoneSmsPrepaidCredits**
> PhoneSmsPrepaidCreditsDto Get-PhoneSmsPrepaidCredits<br>

Get SMS prepaid credits

List SMS prepaid credits for the authenticated account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get SMS prepaid credits
try {
     $Result = Get-PhoneSmsPrepaidCredits
} catch {
    Write-Host ("Exception occured when calling Get-PhoneSmsPrepaidCredits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoneSmsPrepaidCreditsDto**](PhoneSmsPrepaidCreditsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-PhoneSummary"></a>
# **Get-PhoneSummary**
> PhoneSummaryDto Get-PhoneSummary<br>

Get phone summary

Get overview of assigned phones

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get phone summary
try {
     $Result = Get-PhoneSummary
} catch {
    Write-Host ("Exception occured when calling Get-PhoneSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoneSummaryDto**](PhoneSummaryDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SentSmsByPhoneNumber"></a>
# **Get-SentSmsByPhoneNumber**
> PageSentSmsProjection Get-SentSmsByPhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List sent TXT messages for a phone number

Get sent SMS messages for a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$Page = 987 # Int32 | Optional page index in SMS list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter SMSs received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter SMSs received before given date time (optional)
$Search = "Search_example" # String | Optional search filter (optional)

# List sent TXT messages for a phone number
try {
     $Result = Get-SentSmsByPhoneNumber -PhoneNumberId $PhoneNumberId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search
} catch {
    Write-Host ("Exception occured when calling Get-SentSmsByPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in SMS list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter SMSs received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter SMSs received before given date time | [optional] 
 **Search** | **String**| Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SmsByPhoneNumber"></a>
# **Get-SmsByPhoneNumber**
> PageSmsProjection Get-SmsByPhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>

List SMS messages for a phone number

Get SMS messages for a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$Page = 987 # Int32 | Optional page index in SMS list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$UnreadOnly = true # Boolean | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional) (default to $false)
$Since = Get-Date # System.DateTime | Optional filter SMSs received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter SMSs received before given date time (optional)
$Search = "Search_example" # String | Optional search filter (optional)
$Favourite = true # Boolean | Optionally filter results for favourites only (optional) (default to $false)

# List SMS messages for a phone number
try {
     $Result = Get-SmsByPhoneNumber -PhoneNumberId $PhoneNumberId -Page $Page -Size $Size -Sort $Sort -UnreadOnly $UnreadOnly -Since $Since -Before $Before -Search $Search -Favourite $Favourite
} catch {
    Write-Host ("Exception occured when calling Get-SmsByPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in SMS list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **UnreadOnly** | **Boolean**| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to $false]
 **Since** | **System.DateTime**| Optional filter SMSs received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter SMSs received before given date time | [optional] 
 **Search** | **String**| Optional search filter | [optional] 
 **Favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to $false]

### Return type

[**PageSmsProjection**](PageSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ReassignPhoneNumberRelease"></a>
# **Invoke-ReassignPhoneNumberRelease**
> PhoneNumberDto Invoke-ReassignPhoneNumberRelease<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReleaseId] <PSCustomObject><br>

Reassign phone number release

Reassign phone number that was released or deleted

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ReleaseId = "ReleaseId_example" # String | 

# Reassign phone number release
try {
     $Result = Invoke-ReassignPhoneNumberRelease -ReleaseId $ReleaseId
} catch {
    Write-Host ("Exception occured when calling Invoke-ReassignPhoneNumberRelease: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReleaseId** | [**String**](String)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Clear-PhonePoolLease"></a>
# **Clear-PhonePoolLease**
> void Clear-PhonePoolLease<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LeaseId] <PSCustomObject><br>

Release phone pool lease

Release an active phone pool lease

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 
$LeaseId = "LeaseId_example" # String | 

# Release phone pool lease
try {
     $Result = Clear-PhonePoolLease -PoolId $PoolId -LeaseId $LeaseId
} catch {
    Write-Host ("Exception occured when calling Clear-PhonePoolLease: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 
 **LeaseId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Remove-PhoneNumberFromPhonePool"></a>
# **Remove-PhoneNumberFromPhonePool**
> void Remove-PhoneNumberFromPhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>

Remove phone number from phone pool

Remove a phone number from a pool. If the number is leased from this pool the lease is released.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 
$PhoneNumberId = "PhoneNumberId_example" # String | 

# Remove phone number from phone pool
try {
     $Result = Remove-PhoneNumberFromPhonePool -PoolId $PoolId -PhoneNumberId $PhoneNumberId
} catch {
    Write-Host ("Exception occured when calling Remove-PhoneNumberFromPhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 
 **PhoneNumberId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Search-AvailablePhoneNumbers"></a>
# **Search-AvailablePhoneNumbers**
> AvailablePhoneNumbersResult Search-AvailablePhoneNumbers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchAvailablePhoneNumbersOptions] <PSCustomObject><br>

Search available phone numbers

Search available numbers for advanced provisioning

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SearchAvailablePhoneNumbersOptions = (Initialize-SearchAvailablePhoneNumbersOptions -PhoneCountry "US" -PhoneVariant "LOCAL" -QualityFilter "OTP" -LineType "LineType_example" -CarrierName "CarrierName_example" -MobileCountryCode "MobileCountryCode_example" -MobileNetworkCode "MobileNetworkCode_example" -ProviderLabels @("ProviderLabels_example") -Limit 123) # SearchAvailablePhoneNumbersOptions | 

# Search available phone numbers
try {
     $Result = Search-AvailablePhoneNumbers -SearchAvailablePhoneNumbersOptions $SearchAvailablePhoneNumbersOptions
} catch {
    Write-Host ("Exception occured when calling Search-AvailablePhoneNumbers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SearchAvailablePhoneNumbersOptions** | [**SearchAvailablePhoneNumbersOptions**](SearchAvailablePhoneNumbersOptions)|  | 

### Return type

[**AvailablePhoneNumbersResult**](AvailablePhoneNumbersResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-SmsFromPhoneNumber"></a>
# **Send-SmsFromPhoneNumber**
> SentSmsDto Send-SmsFromPhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsSendOptions] <PSCustomObject><br>

Send TXT message from a phone number

Send SMS from a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$SmsSendOptions = (Initialize-SmsSendOptions -To "To_example" -Body "Body_example") # SmsSendOptions | 

# Send TXT message from a phone number
try {
     $Result = Send-SmsFromPhoneNumber -PhoneNumberId $PhoneNumberId -SmsSendOptions $SmsSendOptions
} catch {
    Write-Host ("Exception occured when calling Send-SmsFromPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **SmsSendOptions** | [**SmsSendOptions**](SmsSendOptions)|  | 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Set-ConsentStatus"></a>
# **Set-ConsentStatus**
> ConsentStatusDto Set-ConsentStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Agree] <Boolean><br>

Set consent status

Give or revoke consent for phone usage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Agree = true # Boolean | 

# Set consent status
try {
     $Result = Set-ConsentStatus -Agree $Agree
} catch {
    Write-Host ("Exception occured when calling Set-ConsentStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Agree** | **Boolean**|  | 

### Return type

[**ConsentStatusDto**](ConsentStatusDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Set-PhoneFavourited"></a>
# **Set-PhoneFavourited**
> PhoneNumberDto Set-PhoneFavourited<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetPhoneFavouritedOptions] <PSCustomObject><br>

Set phone favourited state

Set and return new favorite state for a phone

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | ID of phone to set favourite state
$SetPhoneFavouritedOptions = (Initialize-SetPhoneFavouritedOptions -State $false) # SetPhoneFavouritedOptions | 

# Set phone favourited state
try {
     $Result = Set-PhoneFavourited -PhoneNumberId $PhoneNumberId -SetPhoneFavouritedOptions $SetPhoneFavouritedOptions
} catch {
    Write-Host ("Exception occured when calling Set-PhoneFavourited: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)| ID of phone to set favourite state | 
 **SetPhoneFavouritedOptions** | [**SetPhoneFavouritedOptions**](SetPhoneFavouritedOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-PhoneNumberSendSms"></a>
# **Test-PhoneNumberSendSms**
> void Test-PhoneNumberSendSms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestPhoneNumberOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XTestId] <String><br>

Test sending an SMS to a number

Test a phone number by sending an SMS to it. NOTE this is only for internal use to check that a phone number is working. For end-to-end phone testing see https://docs.mailslurp.com/txt-sms/

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$TestPhoneNumberOptions = (Initialize-TestPhoneNumberOptions -Message "Message_example") # TestPhoneNumberOptions | 
$XTestId = "XTestId_example" # String |  (optional)

# Test sending an SMS to a number
try {
     $Result = Test-PhoneNumberSendSms -PhoneNumberId $PhoneNumberId -TestPhoneNumberOptions $TestPhoneNumberOptions -XTestId $XTestId
} catch {
    Write-Host ("Exception occured when calling Test-PhoneNumberSendSms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **TestPhoneNumberOptions** | [**TestPhoneNumberOptions**](TestPhoneNumberOptions)|  | 
 **XTestId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-PhoneNumber"></a>
# **Update-PhoneNumber**
> PhoneNumberDto Update-PhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatePhoneNumberOptions] <PSCustomObject><br>

Update a phone number

Set field for phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | ID of phone to set favourite state
$UpdatePhoneNumberOptions = (Initialize-UpdatePhoneNumberOptions -Name "Name_example" -Description "Description_example") # UpdatePhoneNumberOptions | 

# Update a phone number
try {
     $Result = Update-PhoneNumber -PhoneNumberId $PhoneNumberId -UpdatePhoneNumberOptions $UpdatePhoneNumberOptions
} catch {
    Write-Host ("Exception occured when calling Update-PhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)| ID of phone to set favourite state | 
 **UpdatePhoneNumberOptions** | [**UpdatePhoneNumberOptions**](UpdatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-PhonePool"></a>
# **Update-PhonePool**
> PhonePoolDetailDto Update-PhonePool<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatePhonePoolOptions] <PSCustomObject><br>

Update phone pool

Update phone pool metadata such as name or description

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PoolId = "PoolId_example" # String | 
$UpdatePhonePoolOptions = (Initialize-UpdatePhonePoolOptions -Name "Name_example" -Description "Description_example") # UpdatePhonePoolOptions | 

# Update phone pool
try {
     $Result = Update-PhonePool -PoolId $PoolId -UpdatePhonePoolOptions $UpdatePhonePoolOptions
} catch {
    Write-Host ("Exception occured when calling Update-PhonePool: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | [**String**](String)|  | 
 **UpdatePhonePoolOptions** | [**UpdatePhonePoolOptions**](UpdatePhonePoolOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Confirm-PhoneNumber"></a>
# **Confirm-PhoneNumber**
> PhoneNumberValidationDto Confirm-PhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidatePhoneNumberOptions] <PSCustomObject><br>

Verify validity of a phone number

Validate a phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ValidatePhoneNumberOptions = (Initialize-ValidatePhoneNumberOptions -PhoneNumber "PhoneNumber_example") # ValidatePhoneNumberOptions | 

# Verify validity of a phone number
try {
     $Result = Confirm-PhoneNumber -ValidatePhoneNumberOptions $ValidatePhoneNumberOptions
} catch {
    Write-Host ("Exception occured when calling Confirm-PhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ValidatePhoneNumberOptions** | [**ValidatePhoneNumberOptions**](ValidatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberValidationDto**](PhoneNumberValidationDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

