# maislurp-client-powershell.maislurp-client-powershell/Api.EmailAuditControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Compare-EmailAudits**](EmailAuditControllerApi#Compare-EmailAudits) | **GET** /email-audits/{auditId}/compare/{otherAuditId} | Compare two email audits
[**New-EmailAudit**](EmailAuditControllerApi#New-EmailAudit) | **POST** /email-audits | Create email audit
[**Invoke-DeleteEmailAudit**](EmailAuditControllerApi#Invoke-DeleteEmailAudit) | **DELETE** /email-audits/{auditId} | Delete email audit
[**Get-EmailAudit**](EmailAuditControllerApi#Get-EmailAudit) | **GET** /email-audits/{auditId} | Get email audit
[**Get-EmailAudits**](EmailAuditControllerApi#Get-EmailAudits) | **GET** /email-audits | List email audits


<a name="Compare-EmailAudits"></a>
# **Compare-EmailAudits**
> EmailAuditComparisonDto Compare-EmailAudits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuditId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OtherAuditId] <PSCustomObject><br>

Compare two email audits

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuditId = "AuditId_example" # String | 
$OtherAuditId = "OtherAuditId_example" # String | 

# Compare two email audits
try {
     $Result = Compare-EmailAudits -AuditId $AuditId -OtherAuditId $OtherAuditId
} catch {
    Write-Host ("Exception occured when calling Compare-EmailAudits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuditId** | [**String**](String)|  | 
 **OtherAuditId** | [**String**](String)|  | 

### Return type

[**EmailAuditComparisonDto**](EmailAuditComparisonDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-EmailAudit"></a>
# **New-EmailAudit**
> EmailAuditDto New-EmailAudit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateEmailAuditOptions] <PSCustomObject><br>

Create email audit

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateEmailAuditOptions = (Initialize-CreateEmailAuditOptions -FromAddress "FromAddress_example" -Recipient "Recipient_example" -Subject "Subject_example" -HtmlBody "HtmlBody_example" -TextBody "TextBody_example" -EmailAnalysis (Initialize-EmailAnalysis -SpamVerdict "SpamVerdict_example" -VirusVerdict "VirusVerdict_example" -SpfVerdict "SpfVerdict_example" -DkimVerdict "DkimVerdict_example" -DmarcVerdict "DmarcVerdict_example") -HasAttachments $false) # CreateEmailAuditOptions | 

# Create email audit
try {
     $Result = New-EmailAudit -CreateEmailAuditOptions $CreateEmailAuditOptions
} catch {
    Write-Host ("Exception occured when calling New-EmailAudit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateEmailAuditOptions** | [**CreateEmailAuditOptions**](CreateEmailAuditOptions)|  | 

### Return type

[**EmailAuditDto**](EmailAuditDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteEmailAudit"></a>
# **Invoke-DeleteEmailAudit**
> void Invoke-DeleteEmailAudit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuditId] <PSCustomObject><br>

Delete email audit

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuditId = "AuditId_example" # String | 

# Delete email audit
try {
     $Result = Invoke-DeleteEmailAudit -AuditId $AuditId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteEmailAudit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuditId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailAudit"></a>
# **Get-EmailAudit**
> EmailAuditDto Get-EmailAudit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuditId] <PSCustomObject><br>

Get email audit

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuditId = "AuditId_example" # String | 

# Get email audit
try {
     $Result = Get-EmailAudit -AuditId $AuditId
} catch {
    Write-Host ("Exception occured when calling Get-EmailAudit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuditId** | [**String**](String)|  | 

### Return type

[**EmailAuditDto**](EmailAuditDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-EmailAudits"></a>
# **Get-EmailAudits**
> EmailAuditDto[] Get-EmailAudits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List email audits

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String |  (optional)
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Limit = 987 # Int32 |  (optional)

# List email audits
try {
     $Result = Get-EmailAudits -EmailId $EmailId -Since $Since -Before $Before -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-EmailAudits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | [optional] 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Limit** | **Int32**|  | [optional] 

### Return type

[**EmailAuditDto[]**](EmailAuditDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

