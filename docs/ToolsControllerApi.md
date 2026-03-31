# maislurp-client-powershell.maislurp-client-powershell/Api.ToolsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Test-DmarcReport**](ToolsControllerApi#Test-DmarcReport) | **POST** /tools/analyze-dmarc-report | Parse and summarize a DMARC aggregate XML report
[**Test-EmailHeaders**](ToolsControllerApi#Test-EmailHeaders) | **POST** /tools/analyze-email-headers | Analyze email headers for auth results and delivery path
[**Invoke-CheckCampaignProbe**](ToolsControllerApi#Invoke-CheckCampaignProbe) | **POST** /tools/check-campaign-probe | Run a one-shot free campaign probe preflight check
[**Invoke-CheckDnsPropagation**](ToolsControllerApi#Invoke-CheckDnsPropagation) | **POST** /tools/check-dns-propagation | Check DNS propagation for a host and record type across configured resolvers
[**Invoke-CheckDomainMonitor**](ToolsControllerApi#Invoke-CheckDomainMonitor) | **POST** /tools/check-domain-monitor | Run a one-shot free domain monitor posture check
[**Invoke-CheckEmailAudit**](ToolsControllerApi#Invoke-CheckEmailAudit) | **POST** /tools/check-email-audit | Run a one-shot free email audit across links, images, HTML, and client support
[**Invoke-CheckEmailAuthStack**](ToolsControllerApi#Invoke-CheckEmailAuthStack) | **POST** /tools/check-email-auth-stack | Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check
[**Invoke-CheckEmailBlacklist**](ToolsControllerApi#Invoke-CheckEmailBlacklist) | **POST** /tools/check-email-blacklists | Check whether a domain or IP appears on configured DNS blacklists
[**Invoke-CheckEmailFeaturesClientSupport**](ToolsControllerApi#Invoke-CheckEmailFeaturesClientSupport) | **POST** /tools/check-email-features-client-support | Check email client support for email HTML and CSS features
[**New-NewFakeEmailAddress**](ToolsControllerApi#New-NewFakeEmailAddress) | **POST** /tools/fake-email | Create a new email address using the fake email domains
[**Invoke-DeleteNewFakeEmailAddress**](ToolsControllerApi#Invoke-DeleteNewFakeEmailAddress) | **DELETE** /tools/fake-email | Delete a fake email address using the fake email domains
[**New-BimiRecord**](ToolsControllerApi#New-BimiRecord) | **POST** /tools/generate-bimi-record | Create a BIMI record policy
[**New-DmarcRecord**](ToolsControllerApi#New-DmarcRecord) | **POST** /tools/generate-dmarc-record | Create a DMARC record policy
[**New-MtaStsRecord**](ToolsControllerApi#New-MtaStsRecord) | **POST** /tools/generate-mta-sts-record | Create a TLS reporting record policy
[**New-SpfRecord**](ToolsControllerApi#New-SpfRecord) | **POST** /tools/generate-spf-record | Create an SPF record
[**New-TlsReportingRecord**](ToolsControllerApi#New-TlsReportingRecord) | **POST** /tools/generate-tls-reporting-record | Create a TLS reporting record policy
[**Get-FakeEmailByEmailAddress**](ToolsControllerApi#Get-FakeEmailByEmailAddress) | **GET** /tools/fake-email/byEmailAddress | 
[**Get-FakeEmailById**](ToolsControllerApi#Get-FakeEmailById) | **GET** /tools/fake-email | Get a fake email by its ID
[**Get-FakeEmailRaw**](ToolsControllerApi#Get-FakeEmailRaw) | **GET** /tools/fake-email/html | Get raw fake email content
[**Get-FakeEmailsForAddress**](ToolsControllerApi#Get-FakeEmailsForAddress) | **GET** /tools/fake-emails | Get fake emails for an address
[**Invoke-LookupBimiDomain**](ToolsControllerApi#Invoke-LookupBimiDomain) | **POST** /tools/lookup-bimi-domain | Lookup a BIMI record policy
[**Invoke-LookupDkimDomain**](ToolsControllerApi#Invoke-LookupDkimDomain) | **POST** /tools/lookup-dkim-domain | Lookup and validate a DKIM record
[**Invoke-LookupDmarcDomain**](ToolsControllerApi#Invoke-LookupDmarcDomain) | **POST** /tools/lookup-dmarc-domain | Lookup a DMARC record policy
[**Invoke-LookupMtaStsDomain**](ToolsControllerApi#Invoke-LookupMtaStsDomain) | **POST** /tools/lookup-mta-sts-domain | Lookup a MTA-STS domain policy
[**Invoke-LookupMxRecord**](ToolsControllerApi#Invoke-LookupMxRecord) | **POST** /tools/lookup-mx-records | Lookup a MX records for a domain
[**Invoke-LookupPtr**](ToolsControllerApi#Invoke-LookupPtr) | **POST** /tools/lookup-ptr | Lookup PTR records for an IP address
[**Invoke-LookupSpfDomain**](ToolsControllerApi#Invoke-LookupSpfDomain) | **POST** /tools/lookup-spf-domain | Lookup and validate an SPF record
[**Invoke-LookupTlsReportingDomain**](ToolsControllerApi#Invoke-LookupTlsReportingDomain) | **POST** /tools/lookup-tls-reporting-domain | Lookup a TLS reporting domain policy
[**Test-SmtpServer**](ToolsControllerApi#Test-SmtpServer) | **POST** /tools/test-smtp-server | Run a conservative SMTP connectivity, TLS, and AUTH diagnostic


<a name="Test-DmarcReport"></a>
# **Test-DmarcReport**
> AnalyzeDmarcReportResults Test-DmarcReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AnalyzeDmarcReportOptions] <PSCustomObject><br>

Parse and summarize a DMARC aggregate XML report

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AnalyzeDmarcReportOptions = (Initialize-AnalyzeDmarcReportOptions -ReportXml "ReportXml_example" -CaptchaToken "CaptchaToken_example") # AnalyzeDmarcReportOptions | 

# Parse and summarize a DMARC aggregate XML report
try {
     $Result = Test-DmarcReport -AnalyzeDmarcReportOptions $AnalyzeDmarcReportOptions
} catch {
    Write-Host ("Exception occured when calling Test-DmarcReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AnalyzeDmarcReportOptions** | [**AnalyzeDmarcReportOptions**](AnalyzeDmarcReportOptions)|  | 

### Return type

[**AnalyzeDmarcReportResults**](AnalyzeDmarcReportResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-EmailHeaders"></a>
# **Test-EmailHeaders**
> AnalyzeEmailHeadersResults Test-EmailHeaders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AnalyzeEmailHeadersOptions] <PSCustomObject><br>

Analyze email headers for auth results and delivery path

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AnalyzeEmailHeadersOptions = (Initialize-AnalyzeEmailHeadersOptions -RawHeaders "RawHeaders_example") # AnalyzeEmailHeadersOptions | 

# Analyze email headers for auth results and delivery path
try {
     $Result = Test-EmailHeaders -AnalyzeEmailHeadersOptions $AnalyzeEmailHeadersOptions
} catch {
    Write-Host ("Exception occured when calling Test-EmailHeaders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AnalyzeEmailHeadersOptions** | [**AnalyzeEmailHeadersOptions**](AnalyzeEmailHeadersOptions)|  | 

### Return type

[**AnalyzeEmailHeadersResults**](AnalyzeEmailHeadersResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckCampaignProbe"></a>
# **Invoke-CheckCampaignProbe**
> CheckCampaignProbeResults Invoke-CheckCampaignProbe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckCampaignProbeOptions] <PSCustomObject><br>

Run a one-shot free campaign probe preflight check

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckCampaignProbeOptions = (Initialize-CheckCampaignProbeOptions -FromAddress "FromAddress_example" -Subject "Subject_example" -Recipient "Recipient_example" -MessageId "MessageId_example" -HtmlBody "HtmlBody_example" -TextBody "TextBody_example" -CaptchaToken "CaptchaToken_example") # CheckCampaignProbeOptions | 

# Run a one-shot free campaign probe preflight check
try {
     $Result = Invoke-CheckCampaignProbe -CheckCampaignProbeOptions $CheckCampaignProbeOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckCampaignProbe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckCampaignProbeOptions** | [**CheckCampaignProbeOptions**](CheckCampaignProbeOptions)|  | 

### Return type

[**CheckCampaignProbeResults**](CheckCampaignProbeResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckDnsPropagation"></a>
# **Invoke-CheckDnsPropagation**
> CheckDnsPropagationResults Invoke-CheckDnsPropagation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckDnsPropagationOptions] <PSCustomObject><br>

Check DNS propagation for a host and record type across configured resolvers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckDnsPropagationOptions = (Initialize-CheckDnsPropagationOptions -VarHost "VarHost_example" -RecordType "A" -ExpectedValue "ExpectedValue_example" -CaptchaToken "CaptchaToken_example") # CheckDnsPropagationOptions | 

# Check DNS propagation for a host and record type across configured resolvers
try {
     $Result = Invoke-CheckDnsPropagation -CheckDnsPropagationOptions $CheckDnsPropagationOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckDnsPropagation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckDnsPropagationOptions** | [**CheckDnsPropagationOptions**](CheckDnsPropagationOptions)|  | 

### Return type

[**CheckDnsPropagationResults**](CheckDnsPropagationResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckDomainMonitor"></a>
# **Invoke-CheckDomainMonitor**
> CheckDomainMonitorResults Invoke-CheckDomainMonitor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckDomainMonitorOptions] <PSCustomObject><br>

Run a one-shot free domain monitor posture check

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckDomainMonitorOptions = (Initialize-CheckDomainMonitorOptions -Domain "Domain_example" -CaptchaToken "CaptchaToken_example") # CheckDomainMonitorOptions | 

# Run a one-shot free domain monitor posture check
try {
     $Result = Invoke-CheckDomainMonitor -CheckDomainMonitorOptions $CheckDomainMonitorOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckDomainMonitor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckDomainMonitorOptions** | [**CheckDomainMonitorOptions**](CheckDomainMonitorOptions)|  | 

### Return type

[**CheckDomainMonitorResults**](CheckDomainMonitorResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailAudit"></a>
# **Invoke-CheckEmailAudit**
> EmailAuditAnalysisResult Invoke-CheckEmailAudit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckEmailAuditOptions] <PSCustomObject><br>

Run a one-shot free email audit across links, images, HTML, and client support

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckEmailAuditOptions = (Initialize-CheckEmailAuditOptions -FromAddress "FromAddress_example" -Recipient "Recipient_example" -Subject "Subject_example" -HtmlBody "HtmlBody_example" -TextBody "TextBody_example" -EmailAnalysis (Initialize-EmailAnalysis -SpamVerdict "SpamVerdict_example" -VirusVerdict "VirusVerdict_example" -SpfVerdict "SpfVerdict_example" -DkimVerdict "DkimVerdict_example" -DmarcVerdict "DmarcVerdict_example") -HasAttachments $false -CaptchaToken "CaptchaToken_example") # CheckEmailAuditOptions | 

# Run a one-shot free email audit across links, images, HTML, and client support
try {
     $Result = Invoke-CheckEmailAudit -CheckEmailAuditOptions $CheckEmailAuditOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailAudit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckEmailAuditOptions** | [**CheckEmailAuditOptions**](CheckEmailAuditOptions)|  | 

### Return type

[**EmailAuditAnalysisResult**](EmailAuditAnalysisResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailAuthStack"></a>
# **Invoke-CheckEmailAuthStack**
> CheckEmailAuthStackResults Invoke-CheckEmailAuthStack<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckEmailAuthStackOptions] <PSCustomObject><br>

Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckEmailAuthStackOptions = (Initialize-CheckEmailAuthStackOptions -Domain "Domain_example" -DkimSelector "DkimSelector_example" -CaptchaToken "CaptchaToken_example") # CheckEmailAuthStackOptions | 

# Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check
try {
     $Result = Invoke-CheckEmailAuthStack -CheckEmailAuthStackOptions $CheckEmailAuthStackOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailAuthStack: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckEmailAuthStackOptions** | [**CheckEmailAuthStackOptions**](CheckEmailAuthStackOptions)|  | 

### Return type

[**CheckEmailAuthStackResults**](CheckEmailAuthStackResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailBlacklist"></a>
# **Invoke-CheckEmailBlacklist**
> CheckEmailBlacklistResults Invoke-CheckEmailBlacklist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckEmailBlacklistOptions] <PSCustomObject><br>

Check whether a domain or IP appears on configured DNS blacklists

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckEmailBlacklistOptions = (Initialize-CheckEmailBlacklistOptions -Domain "Domain_example" -IpAddress "IpAddress_example" -MxHost "MxHost_example" -CaptchaToken "CaptchaToken_example") # CheckEmailBlacklistOptions | 

# Check whether a domain or IP appears on configured DNS blacklists
try {
     $Result = Invoke-CheckEmailBlacklist -CheckEmailBlacklistOptions $CheckEmailBlacklistOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailBlacklist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckEmailBlacklistOptions** | [**CheckEmailBlacklistOptions**](CheckEmailBlacklistOptions)|  | 

### Return type

[**CheckEmailBlacklistResults**](CheckEmailBlacklistResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-CheckEmailFeaturesClientSupport"></a>
# **Invoke-CheckEmailFeaturesClientSupport**
> CheckEmailFeaturesClientSupportResults Invoke-CheckEmailFeaturesClientSupport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CheckEmailFeaturesClientSupportOptions] <PSCustomObject><br>

Check email client support for email HTML and CSS features

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CheckEmailFeaturesClientSupportOptions = (Initialize-CheckEmailFeaturesClientSupportOptions -EmailBody "EmailBody_example") # CheckEmailFeaturesClientSupportOptions | 

# Check email client support for email HTML and CSS features
try {
     $Result = Invoke-CheckEmailFeaturesClientSupport -CheckEmailFeaturesClientSupportOptions $CheckEmailFeaturesClientSupportOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-CheckEmailFeaturesClientSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CheckEmailFeaturesClientSupportOptions** | [**CheckEmailFeaturesClientSupportOptions**](CheckEmailFeaturesClientSupportOptions)|  | 

### Return type

[**CheckEmailFeaturesClientSupportResults**](CheckEmailFeaturesClientSupportResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-NewFakeEmailAddress"></a>
# **New-NewFakeEmailAddress**
> NewFakeEmailAddressResult New-NewFakeEmailAddress<br>

Create a new email address using the fake email domains

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Create a new email address using the fake email domains
try {
     $Result = New-NewFakeEmailAddress
} catch {
    Write-Host ("Exception occured when calling New-NewFakeEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewFakeEmailAddressResult**](NewFakeEmailAddressResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteNewFakeEmailAddress"></a>
# **Invoke-DeleteNewFakeEmailAddress**
> void Invoke-DeleteNewFakeEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Delete a fake email address using the fake email domains

Delete a fake email address using the fake email domains

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | 

# Delete a fake email address using the fake email domains
try {
     $Result = Invoke-DeleteNewFakeEmailAddress -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteNewFakeEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-BimiRecord"></a>
# **New-BimiRecord**
> GenerateBimiRecordResults New-BimiRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateBimiRecordOptions] <PSCustomObject><br>

Create a BIMI record policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateBimiRecordOptions = (Initialize-GenerateBimiRecordOptions -Domain "Domain_example" -Version "BIMI1" -LogoUrl "LogoUrl_example" -VmcUrl "VmcUrl_example") # GenerateBimiRecordOptions | 

# Create a BIMI record policy
try {
     $Result = New-BimiRecord -GenerateBimiRecordOptions $GenerateBimiRecordOptions
} catch {
    Write-Host ("Exception occured when calling New-BimiRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateBimiRecordOptions** | [**GenerateBimiRecordOptions**](GenerateBimiRecordOptions)|  | 

### Return type

[**GenerateBimiRecordResults**](GenerateBimiRecordResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-DmarcRecord"></a>
# **New-DmarcRecord**
> GenerateDmarcRecordResults New-DmarcRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateDmarcRecordOptions] <PSCustomObject><br>

Create a DMARC record policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateDmarcRecordOptions = (Initialize-GenerateDmarcRecordOptions -Domain "Domain_example" -Version "DMARC1" -Policy "NONE" -SubdomainPolicy "NONE" -ReportEmailAddress @("ReportEmailAddress_example") -ForensicEmailAddress @("ForensicEmailAddress_example") -Percentage 123 -ReportFormat "AFRF" -SecondsBetweenReports 123 -Adkim "STRICT" -Aspf "STRICT" -Fo "FO_0") # GenerateDmarcRecordOptions | 

# Create a DMARC record policy
try {
     $Result = New-DmarcRecord -GenerateDmarcRecordOptions $GenerateDmarcRecordOptions
} catch {
    Write-Host ("Exception occured when calling New-DmarcRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateDmarcRecordOptions** | [**GenerateDmarcRecordOptions**](GenerateDmarcRecordOptions)|  | 

### Return type

[**GenerateDmarcRecordResults**](GenerateDmarcRecordResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-MtaStsRecord"></a>
# **New-MtaStsRecord**
> GenerateMtaStsRecordResults New-MtaStsRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateMtaStsRecordOptions] <PSCustomObject><br>

Create a TLS reporting record policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateMtaStsRecordOptions = (Initialize-GenerateMtaStsRecordOptions -VarHost "VarHost_example" -Version "STSv1" -Mode "TESTING" -Ttl 123 -MaxAgeSeconds 123 -MxRecords @("MxRecords_example")) # GenerateMtaStsRecordOptions | 

# Create a TLS reporting record policy
try {
     $Result = New-MtaStsRecord -GenerateMtaStsRecordOptions $GenerateMtaStsRecordOptions
} catch {
    Write-Host ("Exception occured when calling New-MtaStsRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateMtaStsRecordOptions** | [**GenerateMtaStsRecordOptions**](GenerateMtaStsRecordOptions)|  | 

### Return type

[**GenerateMtaStsRecordResults**](GenerateMtaStsRecordResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-SpfRecord"></a>
# **New-SpfRecord**
> GenerateSpfRecordResults New-SpfRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateSpfRecordOptions] <PSCustomObject><br>

Create an SPF record

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateSpfRecordOptions = (Initialize-GenerateSpfRecordOptions -Domain "Domain_example" -IncludeDomains @("IncludeDomains_example") -Ip4 @("Ip4_example") -Ip6 @("Ip6_example") -Mx $false -A $false -AllPolicy "FAIL") # GenerateSpfRecordOptions | 

# Create an SPF record
try {
     $Result = New-SpfRecord -GenerateSpfRecordOptions $GenerateSpfRecordOptions
} catch {
    Write-Host ("Exception occured when calling New-SpfRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateSpfRecordOptions** | [**GenerateSpfRecordOptions**](GenerateSpfRecordOptions)|  | 

### Return type

[**GenerateSpfRecordResults**](GenerateSpfRecordResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-TlsReportingRecord"></a>
# **New-TlsReportingRecord**
> GenerateTlsReportingRecordResults New-TlsReportingRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateTlsReportingRecordOptions] <PSCustomObject><br>

Create a TLS reporting record policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateTlsReportingRecordOptions = (Initialize-GenerateTlsReportingRecordOptions -ReportingAddresses @("ReportingAddresses_example") -ReportingUrl "ReportingUrl_example" -VarHost "VarHost_example" -Version "TLSRPTv1" -Ttl 123) # GenerateTlsReportingRecordOptions | 

# Create a TLS reporting record policy
try {
     $Result = New-TlsReportingRecord -GenerateTlsReportingRecordOptions $GenerateTlsReportingRecordOptions
} catch {
    Write-Host ("Exception occured when calling New-TlsReportingRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateTlsReportingRecordOptions** | [**GenerateTlsReportingRecordOptions**](GenerateTlsReportingRecordOptions)|  | 

### Return type

[**GenerateTlsReportingRecordResults**](GenerateTlsReportingRecordResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-FakeEmailByEmailAddress"></a>
# **Get-FakeEmailByEmailAddress**
> FakeEmailResult Get-FakeEmailByEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | 

try {
     $Result = Get-FakeEmailByEmailAddress -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Get-FakeEmailByEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**|  | 

### Return type

[**FakeEmailResult**](FakeEmailResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-FakeEmailById"></a>
# **Get-FakeEmailById**
> FakeEmailResult Get-FakeEmailById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get a fake email by its ID

Get a fake email by its ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get a fake email by its ID
try {
     $Result = Get-FakeEmailById -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-FakeEmailById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**FakeEmailResult**](FakeEmailResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-FakeEmailRaw"></a>
# **Get-FakeEmailRaw**
> String Get-FakeEmailRaw<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get raw fake email content

Retrieve the raw content of a fake email by its ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get raw fake email content
try {
     $Result = Get-FakeEmailRaw -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-FakeEmailRaw: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=utf-8, text/html;charset=utf-8, text/plain; charset=utf-8, text/html; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-FakeEmailsForAddress"></a>
# **Get-FakeEmailsForAddress**
> FakeEmailPreview[] Get-FakeEmailsForAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>

Get fake emails for an address

Get fake emails for an address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | 
$Page = 987 # Int32 |  (optional)

# Get fake emails for an address
try {
     $Result = Get-FakeEmailsForAddress -EmailAddress $EmailAddress -Page $Page
} catch {
    Write-Host ("Exception occured when calling Get-FakeEmailsForAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**|  | 
 **Page** | **Int32**|  | [optional] 

### Return type

[**FakeEmailPreview[]**](FakeEmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupBimiDomain"></a>
# **Invoke-LookupBimiDomain**
> LookupBimiDomainResults Invoke-LookupBimiDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupBimiDomainOptions] <PSCustomObject><br>

Lookup a BIMI record policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupBimiDomainOptions = (Initialize-LookupBimiDomainOptions -VarHost "VarHost_example") # LookupBimiDomainOptions | 

# Lookup a BIMI record policy
try {
     $Result = Invoke-LookupBimiDomain -LookupBimiDomainOptions $LookupBimiDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupBimiDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupBimiDomainOptions** | [**LookupBimiDomainOptions**](LookupBimiDomainOptions)|  | 

### Return type

[**LookupBimiDomainResults**](LookupBimiDomainResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupDkimDomain"></a>
# **Invoke-LookupDkimDomain**
> LookupDkimDomainResults Invoke-LookupDkimDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupDkimDomainOptions] <PSCustomObject><br>

Lookup and validate a DKIM record

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupDkimDomainOptions = (Initialize-LookupDkimDomainOptions -VarHost "VarHost_example" -Selector "Selector_example") # LookupDkimDomainOptions | 

# Lookup and validate a DKIM record
try {
     $Result = Invoke-LookupDkimDomain -LookupDkimDomainOptions $LookupDkimDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupDkimDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupDkimDomainOptions** | [**LookupDkimDomainOptions**](LookupDkimDomainOptions)|  | 

### Return type

[**LookupDkimDomainResults**](LookupDkimDomainResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupDmarcDomain"></a>
# **Invoke-LookupDmarcDomain**
> LookupDmarcDomainResults Invoke-LookupDmarcDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupDmarcDomainOptions] <PSCustomObject><br>

Lookup a DMARC record policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupDmarcDomainOptions = (Initialize-LookupDmarcDomainOptions -VarHost "VarHost_example") # LookupDmarcDomainOptions | 

# Lookup a DMARC record policy
try {
     $Result = Invoke-LookupDmarcDomain -LookupDmarcDomainOptions $LookupDmarcDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupDmarcDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupDmarcDomainOptions** | [**LookupDmarcDomainOptions**](LookupDmarcDomainOptions)|  | 

### Return type

[**LookupDmarcDomainResults**](LookupDmarcDomainResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupMtaStsDomain"></a>
# **Invoke-LookupMtaStsDomain**
> LookupMtaStsDomainResults Invoke-LookupMtaStsDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupMtaStsDomainOptions] <PSCustomObject><br>

Lookup a MTA-STS domain policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupMtaStsDomainOptions = (Initialize-LookupMtaStsDomainOptions -VarHost "VarHost_example") # LookupMtaStsDomainOptions | 

# Lookup a MTA-STS domain policy
try {
     $Result = Invoke-LookupMtaStsDomain -LookupMtaStsDomainOptions $LookupMtaStsDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupMtaStsDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupMtaStsDomainOptions** | [**LookupMtaStsDomainOptions**](LookupMtaStsDomainOptions)|  | 

### Return type

[**LookupMtaStsDomainResults**](LookupMtaStsDomainResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupMxRecord"></a>
# **Invoke-LookupMxRecord**
> LookupMxRecordsResults Invoke-LookupMxRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupMxRecordsOptions] <PSCustomObject><br>

Lookup a MX records for a domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupMxRecordsOptions = (Initialize-LookupMxRecordsOptions -VarHost "VarHost_example") # LookupMxRecordsOptions | 

# Lookup a MX records for a domain
try {
     $Result = Invoke-LookupMxRecord -LookupMxRecordsOptions $LookupMxRecordsOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupMxRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupMxRecordsOptions** | [**LookupMxRecordsOptions**](LookupMxRecordsOptions)|  | 

### Return type

[**LookupMxRecordsResults**](LookupMxRecordsResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupPtr"></a>
# **Invoke-LookupPtr**
> LookupPtrResults Invoke-LookupPtr<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupPtrOptions] <PSCustomObject><br>

Lookup PTR records for an IP address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupPtrOptions = (Initialize-LookupPtrOptions -Ip "Ip_example" -CaptchaToken "CaptchaToken_example") # LookupPtrOptions | 

# Lookup PTR records for an IP address
try {
     $Result = Invoke-LookupPtr -LookupPtrOptions $LookupPtrOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupPtr: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupPtrOptions** | [**LookupPtrOptions**](LookupPtrOptions)|  | 

### Return type

[**LookupPtrResults**](LookupPtrResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupSpfDomain"></a>
# **Invoke-LookupSpfDomain**
> LookupSpfDomainResults Invoke-LookupSpfDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupSpfDomainOptions] <PSCustomObject><br>

Lookup and validate an SPF record

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupSpfDomainOptions = (Initialize-LookupSpfDomainOptions -VarHost "VarHost_example") # LookupSpfDomainOptions | 

# Lookup and validate an SPF record
try {
     $Result = Invoke-LookupSpfDomain -LookupSpfDomainOptions $LookupSpfDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupSpfDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupSpfDomainOptions** | [**LookupSpfDomainOptions**](LookupSpfDomainOptions)|  | 

### Return type

[**LookupSpfDomainResults**](LookupSpfDomainResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-LookupTlsReportingDomain"></a>
# **Invoke-LookupTlsReportingDomain**
> LookupTlsReportingDomainResults Invoke-LookupTlsReportingDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LookupTlsReportingDomainOptions] <PSCustomObject><br>

Lookup a TLS reporting domain policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$LookupTlsReportingDomainOptions = (Initialize-LookupTlsReportingDomainOptions -VarHost "VarHost_example") # LookupTlsReportingDomainOptions | 

# Lookup a TLS reporting domain policy
try {
     $Result = Invoke-LookupTlsReportingDomain -LookupTlsReportingDomainOptions $LookupTlsReportingDomainOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-LookupTlsReportingDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LookupTlsReportingDomainOptions** | [**LookupTlsReportingDomainOptions**](LookupTlsReportingDomainOptions)|  | 

### Return type

[**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-SmtpServer"></a>
# **Test-SmtpServer**
> TestSmtpServerResults Test-SmtpServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestSmtpServerOptions] <PSCustomObject><br>

Run a conservative SMTP connectivity, TLS, and AUTH diagnostic

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$TestSmtpServerOptions = (Initialize-TestSmtpServerOptions -VarHost "VarHost_example" -Port 123 -UseStartTls $false -Username "Username_example" -Password "Password_example" -VarFrom "VarFrom_example" -To "To_example" -CaptchaToken "CaptchaToken_example") # TestSmtpServerOptions | 

# Run a conservative SMTP connectivity, TLS, and AUTH diagnostic
try {
     $Result = Test-SmtpServer -TestSmtpServerOptions $TestSmtpServerOptions
} catch {
    Write-Host ("Exception occured when calling Test-SmtpServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestSmtpServerOptions** | [**TestSmtpServerOptions**](TestSmtpServerOptions)|  | 

### Return type

[**TestSmtpServerResults**](TestSmtpServerResults) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

