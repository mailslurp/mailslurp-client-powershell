# maislurp-client-powershell.maislurp-client-powershell/Api.ApiSendingConnectionControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SendingConnection**](ApiSendingConnectionControllerApi#New-SendingConnection) | **POST** /sending-connections | Create a sending connection
[**Invoke-DeleteDeliverySenderSeats**](ApiSendingConnectionControllerApi#Invoke-DeleteDeliverySenderSeats) | **DELETE** /sending-connections/sender-seats | Cancel purchased Delivery Sender seats
[**Invoke-DeleteSendingConnection**](ApiSendingConnectionControllerApi#Invoke-DeleteSendingConnection) | **DELETE** /sending-connections/{connectionId} | Disconnect a sending connection
[**Disable-SendingConnection**](ApiSendingConnectionControllerApi#Disable-SendingConnection) | **DELETE** /sending-connections/{connectionId}/enable | Disable Delivery Sender capacity
[**Enable-SendingConnection**](ApiSendingConnectionControllerApi#Enable-SendingConnection) | **POST** /sending-connections/{connectionId}/enable | Enable a verified Delivery Sender
[**Get-DeliverySenderCapacity**](ApiSendingConnectionControllerApi#Get-DeliverySenderCapacity) | **GET** /sending-connections/capacity | Get shared Delivery Sender capacity
[**Get-SendingConnection**](ApiSendingConnectionControllerApi#Get-SendingConnection) | **GET** /sending-connections/{connectionId} | Get a sending connection
[**Get-SendingConnectionProviders**](ApiSendingConnectionControllerApi#Get-SendingConnectionProviders) | **GET** /sending-connections/providers | List sending connection providers
[**Get-SendingConnections**](ApiSendingConnectionControllerApi#Get-SendingConnections) | **GET** /sending-connections | List sending connections
[**Invoke-ProbeSendingConnectionDelivery**](ApiSendingConnectionControllerApi#Invoke-ProbeSendingConnectionDelivery) | **POST** /sending-connections/{connectionId}/delivery-probe | Send an unbilled delivery test to a temporary MailSlurp inbox
[**Invoke-RotateSendingConnectionCredentials**](ApiSendingConnectionControllerApi#Invoke-RotateSendingConnectionCredentials) | **POST** /sending-connections/{connectionId}/credentials | Rotate sending connection credentials
[**Update-DeliverySenderSeats**](ApiSendingConnectionControllerApi#Update-DeliverySenderSeats) | **PUT** /sending-connections/sender-seats | Update purchased Delivery Sender seats
[**Update-SendingConnection**](ApiSendingConnectionControllerApi#Update-SendingConnection) | **PATCH** /sending-connections/{connectionId} | Update a sending connection
[**Test-SendingConnection**](ApiSendingConnectionControllerApi#Test-SendingConnection) | **POST** /sending-connections/{connectionId}/verify | Verify a sending connection


<a name="New-SendingConnection"></a>
# **New-SendingConnection**
> SendingConnectionDto New-SendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateSendingConnectionOptions] <PSCustomObject><br>

Create a sending connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateSendingConnectionOptions = (Initialize-CreateSendingConnectionOptions -Name "Name_example" -ProviderPreset "GENERIC_SMTP" -Provider "SMTP" -FromEmail "FromEmail_example" -Smtp (Initialize-SendingConnectionSmtpOptions -VarHost "VarHost_example" -Port 123 -Security "START_TLS" -Username "Username_example" -Password "Password_example") -ApiKey (Initialize-SendingConnectionApiKeyOptions -ApiKey "ApiKey_example" -SendingDomain "SendingDomain_example" -Region "US")) # CreateSendingConnectionOptions | 

# Create a sending connection
try {
     $Result = New-SendingConnection -CreateSendingConnectionOptions $CreateSendingConnectionOptions
} catch {
    Write-Host ("Exception occured when calling New-SendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateSendingConnectionOptions** | [**CreateSendingConnectionOptions**](CreateSendingConnectionOptions)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDeliverySenderSeats"></a>
# **Invoke-DeleteDeliverySenderSeats**
> DeliverySenderCapacityDto Invoke-DeleteDeliverySenderSeats<br>

Cancel purchased Delivery Sender seats

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Cancel purchased Delivery Sender seats
try {
     $Result = Invoke-DeleteDeliverySenderSeats
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDeliverySenderSeats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeliverySenderCapacityDto**](DeliverySenderCapacityDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteSendingConnection"></a>
# **Invoke-DeleteSendingConnection**
> void Invoke-DeleteSendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Disconnect a sending connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Disconnect a sending connection
try {
     $Result = Invoke-DeleteSendingConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteSendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Disable-SendingConnection"></a>
# **Disable-SendingConnection**
> SendingConnectionDto Disable-SendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Disable Delivery Sender capacity

Releases this connection's shared sender allocation while retaining its verified credentials.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Disable Delivery Sender capacity
try {
     $Result = Disable-SendingConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Disable-SendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Enable-SendingConnection"></a>
# **Enable-SendingConnection**
> SendingConnectionDto Enable-SendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Enable a verified Delivery Sender

Allocates shared sender capacity. Included capacity is used first and supported additional capacity is added to the existing subscription when possible.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Enable a verified Delivery Sender
try {
     $Result = Enable-SendingConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Enable-SendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DeliverySenderCapacity"></a>
# **Get-DeliverySenderCapacity**
> DeliverySenderCapacityDto Get-DeliverySenderCapacity<br>

Get shared Delivery Sender capacity

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get shared Delivery Sender capacity
try {
     $Result = Get-DeliverySenderCapacity
} catch {
    Write-Host ("Exception occured when calling Get-DeliverySenderCapacity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeliverySenderCapacityDto**](DeliverySenderCapacityDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SendingConnection"></a>
# **Get-SendingConnection**
> SendingConnectionDto Get-SendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Get a sending connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Get a sending connection
try {
     $Result = Get-SendingConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Get-SendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SendingConnectionProviders"></a>
# **Get-SendingConnectionProviders**
> SendingConnectionProviderDto[] Get-SendingConnectionProviders<br>

List sending connection providers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List sending connection providers
try {
     $Result = Get-SendingConnectionProviders
} catch {
    Write-Host ("Exception occured when calling Get-SendingConnectionProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SendingConnectionProviderDto[]**](SendingConnectionProviderDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SendingConnections"></a>
# **Get-SendingConnections**
> SendingConnectionDto[] Get-SendingConnections<br>

List sending connections

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List sending connections
try {
     $Result = Get-SendingConnections
} catch {
    Write-Host ("Exception occured when calling Get-SendingConnections: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SendingConnectionDto[]**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ProbeSendingConnectionDelivery"></a>
# **Invoke-ProbeSendingConnectionDelivery**
> SendingConnectionDeliveryProbeDto Invoke-ProbeSendingConnectionDelivery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Send an unbilled delivery test to a temporary MailSlurp inbox

Uses only the selected customer-owned connection. A successful receipt proves provider acceptance and delivery to MailSlurp, not Gmail or Outlook placement.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Send an unbilled delivery test to a temporary MailSlurp inbox
try {
     $Result = Invoke-ProbeSendingConnectionDelivery -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Invoke-ProbeSendingConnectionDelivery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**SendingConnectionDeliveryProbeDto**](SendingConnectionDeliveryProbeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-RotateSendingConnectionCredentials"></a>
# **Invoke-RotateSendingConnectionCredentials**
> SendingConnectionDto Invoke-RotateSendingConnectionCredentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RotateSendingConnectionCredentialsOptions] <PSCustomObject><br>

Rotate sending connection credentials

Verifies supported replacement credentials before atomically replacing the encrypted credential envelope.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 
$RotateSendingConnectionCredentialsOptions = (Initialize-RotateSendingConnectionCredentialsOptions -Smtp (Initialize-SendingConnectionSmtpOptions -VarHost "VarHost_example" -Port 123 -Security "START_TLS" -Username "Username_example" -Password "Password_example") -ApiKey (Initialize-SendingConnectionApiKeyOptions -ApiKey "ApiKey_example" -SendingDomain "SendingDomain_example" -Region "US")) # RotateSendingConnectionCredentialsOptions | 

# Rotate sending connection credentials
try {
     $Result = Invoke-RotateSendingConnectionCredentials -ConnectionId $ConnectionId -RotateSendingConnectionCredentialsOptions $RotateSendingConnectionCredentialsOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-RotateSendingConnectionCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 
 **RotateSendingConnectionCredentialsOptions** | [**RotateSendingConnectionCredentialsOptions**](RotateSendingConnectionCredentialsOptions)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-DeliverySenderSeats"></a>
# **Update-DeliverySenderSeats**
> DeliverySenderCapacityDto Update-DeliverySenderSeats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDeliverySenderSeatsOptions] <PSCustomObject><br>

Update purchased Delivery Sender seats

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UpdateDeliverySenderSeatsOptions = (Initialize-UpdateDeliverySenderSeatsOptions -Quantity 123) # UpdateDeliverySenderSeatsOptions | 

# Update purchased Delivery Sender seats
try {
     $Result = Update-DeliverySenderSeats -UpdateDeliverySenderSeatsOptions $UpdateDeliverySenderSeatsOptions
} catch {
    Write-Host ("Exception occured when calling Update-DeliverySenderSeats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateDeliverySenderSeatsOptions** | [**UpdateDeliverySenderSeatsOptions**](UpdateDeliverySenderSeatsOptions)|  | 

### Return type

[**DeliverySenderCapacityDto**](DeliverySenderCapacityDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-SendingConnection"></a>
# **Update-SendingConnection**
> SendingConnectionDto Update-SendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateSendingConnectionOptions] <PSCustomObject><br>

Update a sending connection

Updates non-secret connection metadata. Use the credentials endpoint to replace supported SMTP or API-key credentials.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 
$UpdateSendingConnectionOptions = (Initialize-UpdateSendingConnectionOptions -Name "Name_example" -FromEmail "FromEmail_example") # UpdateSendingConnectionOptions | 

# Update a sending connection
try {
     $Result = Update-SendingConnection -ConnectionId $ConnectionId -UpdateSendingConnectionOptions $UpdateSendingConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Update-SendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 
 **UpdateSendingConnectionOptions** | [**UpdateSendingConnectionOptions**](UpdateSendingConnectionOptions)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-SendingConnection"></a>
# **Test-SendingConnection**
> SendingConnectionDto Test-SendingConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionId] <PSCustomObject><br>

Verify a sending connection

Verifies the customer credential without enabling billable sender capacity. A consuming product enables the shared Delivery Sender seat when sending starts.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConnectionId = "ConnectionId_example" # String | 

# Verify a sending connection
try {
     $Result = Test-SendingConnection -ConnectionId $ConnectionId
} catch {
    Write-Host ("Exception occured when calling Test-SendingConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectionId** | [**String**](String)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

