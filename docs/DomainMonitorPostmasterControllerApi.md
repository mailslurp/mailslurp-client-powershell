# maislurp-client-powershell.maislurp-client-powershell/Api.DomainMonitorPostmasterControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-DomainMonitorPostmasterConnection**](DomainMonitorPostmasterControllerApi#New-DomainMonitorPostmasterConnection) | **POST** /domain-monitor/postmaster/connect | Create Postmaster OAuth connection URL
[**Invoke-DeleteDomainMonitorPostmasterConnection**](DomainMonitorPostmasterControllerApi#Invoke-DeleteDomainMonitorPostmasterConnection) | **DELETE** /domain-monitor/postmaster/connection | Disconnect Postmaster OAuth
[**Invoke-ExchangeDomainMonitorPostmasterCode**](DomainMonitorPostmasterControllerApi#Invoke-ExchangeDomainMonitorPostmasterCode) | **POST** /domain-monitor/postmaster/oauth-exchange | Exchange Postmaster OAuth authorization code
[**Get-DomainMonitorPostmasterConnection**](DomainMonitorPostmasterControllerApi#Get-DomainMonitorPostmasterConnection) | **GET** /domain-monitor/postmaster/connection | Get Postmaster connection status
[**Get-DomainMonitorPostmasterDomains**](DomainMonitorPostmasterControllerApi#Get-DomainMonitorPostmasterDomains) | **GET** /domain-monitor/postmaster/domains | List local Postmaster domain snapshots
[**Get-DomainMonitorPostmasterTrafficStats**](DomainMonitorPostmasterControllerApi#Get-DomainMonitorPostmasterTrafficStats) | **GET** /domain-monitor/postmaster/domains/{domain}/traffic-stats | Get local Postmaster traffic stats
[**Sync-DomainMonitorPostmasterDomains**](DomainMonitorPostmasterControllerApi#Sync-DomainMonitorPostmasterDomains) | **POST** /domain-monitor/postmaster/domains/sync | Sync Postmaster domains
[**Sync-DomainMonitorPostmasterTrafficStats**](DomainMonitorPostmasterControllerApi#Sync-DomainMonitorPostmasterTrafficStats) | **POST** /domain-monitor/postmaster/domains/{domain}/traffic-stats/sync | Sync Postmaster traffic stats


<a name="New-DomainMonitorPostmasterConnection"></a>
# **New-DomainMonitorPostmasterConnection**
> CreatePostmasterConnectionResult New-DomainMonitorPostmasterConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePostmasterConnectionOptions] <PSCustomObject><br>

Create Postmaster OAuth connection URL

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreatePostmasterConnectionOptions = (Initialize-CreatePostmasterConnectionOptions -RedirectBase "RedirectBase_example" -RedirectUri "RedirectUri_example" -EmailAddress "EmailAddress_example" -State "State_example") # CreatePostmasterConnectionOptions | 

# Create Postmaster OAuth connection URL
try {
     $Result = New-DomainMonitorPostmasterConnection -CreatePostmasterConnectionOptions $CreatePostmasterConnectionOptions
} catch {
    Write-Host ("Exception occured when calling New-DomainMonitorPostmasterConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePostmasterConnectionOptions** | [**CreatePostmasterConnectionOptions**](CreatePostmasterConnectionOptions)|  | 

### Return type

[**CreatePostmasterConnectionResult**](CreatePostmasterConnectionResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDomainMonitorPostmasterConnection"></a>
# **Invoke-DeleteDomainMonitorPostmasterConnection**
> void Invoke-DeleteDomainMonitorPostmasterConnection<br>

Disconnect Postmaster OAuth

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Disconnect Postmaster OAuth
try {
     $Result = Invoke-DeleteDomainMonitorPostmasterConnection
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDomainMonitorPostmasterConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ExchangeDomainMonitorPostmasterCode"></a>
# **Invoke-ExchangeDomainMonitorPostmasterCode**
> PostmasterConnectionDto Invoke-ExchangeDomainMonitorPostmasterCode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangePostmasterCodeOptions] <PSCustomObject><br>

Exchange Postmaster OAuth authorization code

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ExchangePostmasterCodeOptions = (Initialize-ExchangePostmasterCodeOptions -AuthorizationCode "AuthorizationCode_example" -RedirectUri "RedirectUri_example" -State "State_example") # ExchangePostmasterCodeOptions | 

# Exchange Postmaster OAuth authorization code
try {
     $Result = Invoke-ExchangeDomainMonitorPostmasterCode -ExchangePostmasterCodeOptions $ExchangePostmasterCodeOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-ExchangeDomainMonitorPostmasterCode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangePostmasterCodeOptions** | [**ExchangePostmasterCodeOptions**](ExchangePostmasterCodeOptions)|  | 

### Return type

[**PostmasterConnectionDto**](PostmasterConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorPostmasterConnection"></a>
# **Get-DomainMonitorPostmasterConnection**
> PostmasterConnectionStatusDto Get-DomainMonitorPostmasterConnection<br>

Get Postmaster connection status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get Postmaster connection status
try {
     $Result = Get-DomainMonitorPostmasterConnection
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorPostmasterConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PostmasterConnectionStatusDto**](PostmasterConnectionStatusDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorPostmasterDomains"></a>
# **Get-DomainMonitorPostmasterDomains**
> PostmasterDomainDto[] Get-DomainMonitorPostmasterDomains<br>

List local Postmaster domain snapshots

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List local Postmaster domain snapshots
try {
     $Result = Get-DomainMonitorPostmasterDomains
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorPostmasterDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PostmasterDomainDto[]**](PostmasterDomainDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainMonitorPostmasterTrafficStats"></a>
# **Get-DomainMonitorPostmasterTrafficStats**
> PostmasterTrafficStatsListDto Get-DomainMonitorPostmasterTrafficStats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Get local Postmaster traffic stats

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Domain = "Domain_example" # String | 
$StartDate = Get-Date # System.DateTime |  (optional)
$EndDate = Get-Date # System.DateTime |  (optional)

# Get local Postmaster traffic stats
try {
     $Result = Get-DomainMonitorPostmasterTrafficStats -Domain $Domain -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occured when calling Get-DomainMonitorPostmasterTrafficStats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Domain** | **String**|  | 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**PostmasterTrafficStatsListDto**](PostmasterTrafficStatsListDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Sync-DomainMonitorPostmasterDomains"></a>
# **Sync-DomainMonitorPostmasterDomains**
> PostmasterDomainDto[] Sync-DomainMonitorPostmasterDomains<br>

Sync Postmaster domains

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Sync Postmaster domains
try {
     $Result = Sync-DomainMonitorPostmasterDomains
} catch {
    Write-Host ("Exception occured when calling Sync-DomainMonitorPostmasterDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PostmasterDomainDto[]**](PostmasterDomainDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Sync-DomainMonitorPostmasterTrafficStats"></a>
# **Sync-DomainMonitorPostmasterTrafficStats**
> PostmasterTrafficStatsListDto Sync-DomainMonitorPostmasterTrafficStats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Sync Postmaster traffic stats

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Domain = "Domain_example" # String | 
$StartDate = Get-Date # System.DateTime |  (optional)
$EndDate = Get-Date # System.DateTime |  (optional)

# Sync Postmaster traffic stats
try {
     $Result = Sync-DomainMonitorPostmasterTrafficStats -Domain $Domain -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occured when calling Sync-DomainMonitorPostmasterTrafficStats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Domain** | **String**|  | 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**PostmasterTrafficStatsListDto**](PostmasterTrafficStatsListDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

