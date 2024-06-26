# maislurp-client-powershell.maislurp-client-powershell/Api.DomainControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-DomainWildcardCatchAll**](DomainControllerApi#Add-DomainWildcardCatchAll) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**New-Domain**](DomainControllerApi#New-Domain) | **POST** /domains | Create Domain
[**Invoke-DeleteDomain**](DomainControllerApi#Invoke-DeleteDomain) | **DELETE** /domains/{id} | Delete a domain
[**Get-AvailableDomains**](DomainControllerApi#Get-AvailableDomains) | **GET** /domains/available-domains | Get all usable domains
[**Get-Domain**](DomainControllerApi#Get-Domain) | **GET** /domains/{id} | Get a domain
[**Get-DomainIssues**](DomainControllerApi#Get-DomainIssues) | **GET** /domains/issues | Get domain issues
[**Get-DomainWildcardCatchAllInbox**](DomainControllerApi#Get-DomainWildcardCatchAllInbox) | **GET** /domains/{id}/wildcard | Get catch all wild card inbox for domain
[**Get-Domains**](DomainControllerApi#Get-Domains) | **GET** /domains | Get domains
[**Get-MailSlurpDomains**](DomainControllerApi#Get-MailSlurpDomains) | **GET** /domains/mailslurp-domains | Get MailSlurp domains
[**Update-Domain**](DomainControllerApi#Update-Domain) | **PUT** /domains/{id} | Update a domain


<a name="Add-DomainWildcardCatchAll"></a>
# **Add-DomainWildcardCatchAll**
> DomainDto Add-DomainWildcardCatchAll<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Add catch all wild card inbox to domain
try {
     $Result = Add-DomainWildcardCatchAll -Id $Id
} catch {
    Write-Host ("Exception occured when calling Add-DomainWildcardCatchAll: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**DomainDto**](DomainDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-Domain"></a>
# **New-Domain**
> DomainDto New-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDomainOptions] <PSCustomObject><br>

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateDomainOptions = (Initialize-CreateDomainOptions -Domain "Domain_example" -Description "Description_example" -CreatedCatchAllInbox $false -DomainType "HTTP_INBOX") # CreateDomainOptions | 

# Create Domain
try {
     $Result = New-Domain -CreateDomainOptions $CreateDomainOptions
} catch {
    Write-Host ("Exception occured when calling New-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateDomainOptions** | [**CreateDomainOptions**](CreateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteDomain"></a>
# **Invoke-DeleteDomain**
> String[] Invoke-DeleteDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete a domain
try {
     $Result = Invoke-DeleteDomain -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AvailableDomains"></a>
# **Get-AvailableDomains**
> DomainGroupsDto Get-AvailableDomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>

Get all usable domains

List all domains available for use with email address creation

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxType = "HTTP_INBOX" # String |  (optional)

# Get all usable domains
try {
     $Result = Get-AvailableDomains -InboxType $InboxType
} catch {
    Write-Host ("Exception occured when calling Get-AvailableDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxType** | **String**|  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Domain"></a>
# **Get-Domain**
> DomainDto Get-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckForErrors] <System.Nullable[Boolean]><br>

Get a domain

Returns domain verification status and tokens for a given domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CheckForErrors = true # Boolean |  (optional)

# Get a domain
try {
     $Result = Get-Domain -Id $Id -CheckForErrors $CheckForErrors
} catch {
    Write-Host ("Exception occured when calling Get-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CheckForErrors** | **Boolean**|  | [optional] 

### Return type

[**DomainDto**](DomainDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainIssues"></a>
# **Get-DomainIssues**
> DomainIssuesDto Get-DomainIssues<br>

Get domain issues

List domain issues for domains you have created

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get domain issues
try {
     $Result = Get-DomainIssues
} catch {
    Write-Host ("Exception occured when calling Get-DomainIssues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainIssuesDto**](DomainIssuesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DomainWildcardCatchAllInbox"></a>
# **Get-DomainWildcardCatchAllInbox**
> InboxDto Get-DomainWildcardCatchAllInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get catch all wild card inbox for domain

Get the catch all inbox for a domain for missed emails

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get catch all wild card inbox for domain
try {
     $Result = Get-DomainWildcardCatchAllInbox -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-DomainWildcardCatchAllInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Domains"></a>
# **Get-Domains**
> DomainPreview[] Get-Domains<br>

Get domains

List all custom domains you have created

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get domains
try {
     $Result = Get-Domains
} catch {
    Write-Host ("Exception occured when calling Get-Domains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainPreview[]**](DomainPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-MailSlurpDomains"></a>
# **Get-MailSlurpDomains**
> DomainGroupsDto Get-MailSlurpDomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>

Get MailSlurp domains

List all MailSlurp domains used with non-custom email addresses

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxType = "HTTP_INBOX" # String |  (optional)

# Get MailSlurp domains
try {
     $Result = Get-MailSlurpDomains -InboxType $InboxType
} catch {
    Write-Host ("Exception occured when calling Get-MailSlurpDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxType** | **String**|  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-Domain"></a>
# **Update-Domain**
> DomainDto Update-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDomainOptions] <PSCustomObject><br>

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$UpdateDomainOptions = (Initialize-UpdateDomainOptions -CatchAllInboxId "CatchAllInboxId_example") # UpdateDomainOptions | 

# Update a domain
try {
     $Result = Update-Domain -Id $Id -UpdateDomainOptions $UpdateDomainOptions
} catch {
    Write-Host ("Exception occured when calling Update-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **UpdateDomainOptions** | [**UpdateDomainOptions**](UpdateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

