# maislurp-client-powershell.maislurp-client-powershell/Api.MailServerControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DescribeMailServerDomain**](MailServerControllerApi#Invoke-DescribeMailServerDomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**Get-DnsLookup**](MailServerControllerApi#Get-DnsLookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**Get-IpAddress**](MailServerControllerApi#Get-IpAddress) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**Test-EmailAddress**](MailServerControllerApi#Test-EmailAddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


<a name="Invoke-DescribeMailServerDomain"></a>
# **Invoke-DescribeMailServerDomain**
> DescribeMailServerDomainResult Invoke-DescribeMailServerDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DescribeDomainOptions] <PSCustomObject><br>

Get DNS Mail Server records for a domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$DescribeDomainOptions = (Initialize-DescribeDomainOptions -Domain "Domain_example") # DescribeDomainOptions | 

# Get DNS Mail Server records for a domain
try {
     $Result = Invoke-DescribeMailServerDomain -DescribeDomainOptions $DescribeDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-DescribeMailServerDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DescribeDomainOptions** | [**DescribeDomainOptions**](DescribeDomainOptions)|  | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-DnsLookup"></a>
# **Get-DnsLookup**
> DNSLookupResults Get-DnsLookup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DNSLookupOptions] <PSCustomObject><br>

Lookup DNS records for a domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$DNSLookupOptions = (Initialize-DNSLookupOptions -Hostname "Hostname_example" -RecordTypes @("A") -OmitFinalDNSDot $false) # DNSLookupOptions | 

# Lookup DNS records for a domain
try {
     $Result = Get-DnsLookup -DNSLookupOptions $DNSLookupOptions
} catch {
    Write-Host ("Exception occured when calling Get-DnsLookup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DNSLookupOptions** | [**DNSLookupOptions**](DNSLookupOptions)|  | 

### Return type

[**DNSLookupResults**](DNSLookupResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-IpAddress"></a>
# **Get-IpAddress**
> IPAddressResult Get-IpAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get IP address for a domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | 

# Get IP address for a domain
try {
     $Result = Get-IpAddress -Name $Name
} catch {
    Write-Host ("Exception occured when calling Get-IpAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 

### Return type

[**IPAddressResult**](IPAddressResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-EmailAddress"></a>
# **Test-EmailAddress**
> EmailVerificationResult Test-EmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VerifyEmailAddressOptions] <PSCustomObject><br>

Verify the existence of an email address at a given mail server.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$VerifyEmailAddressOptions = (Initialize-VerifyEmailAddressOptions -MailServerDomain "MailServerDomain_example" -EmailAddress "EmailAddress_example" -SenderEmailAddress "SenderEmailAddress_example" -Port 123) # VerifyEmailAddressOptions | 

# Verify the existence of an email address at a given mail server.
try {
     $Result = Test-EmailAddress -VerifyEmailAddressOptions $VerifyEmailAddressOptions
} catch {
    Write-Host ("Exception occured when calling Test-EmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VerifyEmailAddressOptions** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions)|  | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

