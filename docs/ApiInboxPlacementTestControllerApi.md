# maislurp-client-powershell.maislurp-client-powershell/Api.ApiInboxPlacementTestControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Confirm-InboxPlacementTestSent**](ApiInboxPlacementTestControllerApi#Confirm-InboxPlacementTestSent) | **POST** /inbox-placement-tests/{id}/confirm-sent | Confirm an inbox placement test email has been sent
[**New-InboxPlacementTest**](ApiInboxPlacementTestControllerApi#New-InboxPlacementTest) | **POST** /inbox-placement-tests | Create a new direct-send inbox placement test
[**Export-InboxPlacementSeedList**](ApiInboxPlacementTestControllerApi#Export-InboxPlacementSeedList) | **GET** /inbox-placement-tests/{id}/seed-list.csv | Download inbox placement seed addresses as an email-platform CSV
[**Export-InboxPlacementTestResults**](ApiInboxPlacementTestControllerApi#Export-InboxPlacementTestResults) | **GET** /inbox-placement-tests/{id}/results/export | Export inbox placement test results as CSV
[**Get-InboxPlacementAnalyticsBreakdown**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementAnalyticsBreakdown) | **GET** /inbox-placement-tests/analytics/breakdown | Get inbox placement analytics breakdowns
[**Get-InboxPlacementAnalyticsSeries**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementAnalyticsSeries) | **GET** /inbox-placement-tests/analytics/series | Get inbox placement analytics time series
[**Get-InboxPlacementPublicShare**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementPublicShare) | **GET** /inbox-placement-tests/share/{shareToken} | Get a public inbox placement share
[**Get-InboxPlacementPublicShareAnalysis**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementPublicShareAnalysis) | **GET** /inbox-placement-tests/share/{shareToken}/analysis | Get public inbox placement share analysis
[**Get-InboxPlacementTest**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementTest) | **GET** /inbox-placement-tests/{id} | Get inbox placement test run
[**Get-InboxPlacementTestAnalysis**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementTestAnalysis) | **GET** /inbox-placement-tests/{id}/analysis | Get inbox placement run analysis
[**Get-InboxPlacementTestResults**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementTestResults) | **GET** /inbox-placement-tests/{id}/results | Get inbox placement test results
[**Get-InboxPlacementTests**](ApiInboxPlacementTestControllerApi#Get-InboxPlacementTests) | **GET** /inbox-placement-tests | List inbox placement test runs
[**Invoke-PrepareInboxPlacementTest**](ApiInboxPlacementTestControllerApi#Invoke-PrepareInboxPlacementTest) | **POST** /inbox-placement-tests/prepare | Prepare a direct-send inbox placement test without consuming allowance


<a name="Confirm-InboxPlacementTestSent"></a>
# **Confirm-InboxPlacementTestSent**
> InboxPlacementTestRunDto Confirm-InboxPlacementTestSent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Confirm an inbox placement test email has been sent

Reconcile any messages that arrived after seed reservation, commit allowance, and move a prepared dashboard test into its active lifecycle. This operation is idempotent.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Confirm an inbox placement test email has been sent
try {
     $Result = Confirm-InboxPlacementTestSent -Id $Id
} catch {
    Write-Host ("Exception occured when calling Confirm-InboxPlacementTestSent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-InboxPlacementTest"></a>
# **New-InboxPlacementTest**
> InboxPlacementTestRunDto New-InboxPlacementTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxPlacementTestOptions] <PSCustomObject><br>

Create a new direct-send inbox placement test

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxPlacementTestOptions = (Initialize-CreateInboxPlacementTestOptions -SeedlistProfile "SeedlistProfile_example" -RequestedSegment "ALL_INBOXES" -SenderDomain "SenderDomain_example" -FromEmail "FromEmail_example" -PublicShareRequested $false -AddressFormat "COMMA") # CreateInboxPlacementTestOptions | 

# Create a new direct-send inbox placement test
try {
     $Result = New-InboxPlacementTest -CreateInboxPlacementTestOptions $CreateInboxPlacementTestOptions
} catch {
    Write-Host ("Exception occured when calling New-InboxPlacementTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxPlacementTestOptions** | [**CreateInboxPlacementTestOptions**](CreateInboxPlacementTestOptions)|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Export-InboxPlacementSeedList"></a>
# **Export-InboxPlacementSeedList**
> void Export-InboxPlacementSeedList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <String><br>

Download inbox placement seed addresses as an email-platform CSV

Export the current run's seed addresses with headers recognized by the selected email platform. Downloading a prepared seed list does not confirm the send or consume allowance.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$Provider = "GENERIC" # String |  (optional) (default to "GENERIC")

# Download inbox placement seed addresses as an email-platform CSV
try {
     $Result = Export-InboxPlacementSeedList -Id $Id -Provider $Provider
} catch {
    Write-Host ("Exception occured when calling Export-InboxPlacementSeedList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **Provider** | **String**|  | [optional] [default to &quot;GENERIC&quot;]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Export-InboxPlacementTestResults"></a>
# **Export-InboxPlacementTestResults**
> void Export-InboxPlacementTestResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Export inbox placement test results as CSV

Export one row per placement target, including run-level delivery totals, 0-10 placement scores, and target placement outcome fields.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Export inbox placement test results as CSV
try {
     $Result = Export-InboxPlacementTestResults -Id $Id
} catch {
    Write-Host ("Exception occured when calling Export-InboxPlacementTestResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-InboxPlacementAnalyticsBreakdown"></a>
# **Get-InboxPlacementAnalyticsBreakdown**
> InboxPlacementAnalyticsBreakdownDto Get-InboxPlacementAnalyticsBreakdown<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SenderDomain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FromEmail] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get inbox placement analytics breakdowns

Return aggregated folder, provider, sender-domain, and from-email breakdowns for inbox placement runs in a time range.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$SenderDomain = "SenderDomain_example" # String |  (optional)
$FromEmail = "FromEmail_example" # String |  (optional)
$Limit = 987 # Int32 |  (optional)

# Get inbox placement analytics breakdowns
try {
     $Result = Get-InboxPlacementAnalyticsBreakdown -Since $Since -Before $Before -SenderDomain $SenderDomain -FromEmail $FromEmail -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementAnalyticsBreakdown: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **SenderDomain** | **String**|  | [optional] 
 **FromEmail** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] 

### Return type

[**InboxPlacementAnalyticsBreakdownDto**](InboxPlacementAnalyticsBreakdownDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementAnalyticsSeries"></a>
# **Get-InboxPlacementAnalyticsSeries**
> InboxPlacementAnalyticsSeriesDto Get-InboxPlacementAnalyticsSeries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Bucket] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SenderDomain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FromEmail] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RunLimit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupLimit] <System.Nullable[Int32]><br>

Get inbox placement analytics time series

Return chart-ready inbox placement metrics over time, with optional sender/domain filters and grouped comparisons for sender domains or from-email addresses.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Bucket = "HOUR" # String |  (optional) (default to "DAY")
$GroupBy = "NONE" # String |  (optional) (default to "NONE")
$SenderDomain = "SenderDomain_example" # String |  (optional)
$FromEmail = "FromEmail_example" # String |  (optional)
$RunLimit = 987 # Int32 |  (optional)
$GroupLimit = 987 # Int32 |  (optional)

# Get inbox placement analytics time series
try {
     $Result = Get-InboxPlacementAnalyticsSeries -Since $Since -Before $Before -Bucket $Bucket -GroupBy $GroupBy -SenderDomain $SenderDomain -FromEmail $FromEmail -RunLimit $RunLimit -GroupLimit $GroupLimit
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementAnalyticsSeries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Bucket** | **String**|  | [optional] [default to &quot;DAY&quot;]
 **GroupBy** | **String**|  | [optional] [default to &quot;NONE&quot;]
 **SenderDomain** | **String**|  | [optional] 
 **FromEmail** | **String**|  | [optional] 
 **RunLimit** | **Int32**|  | [optional] 
 **GroupLimit** | **Int32**|  | [optional] 

### Return type

[**InboxPlacementAnalyticsSeriesDto**](InboxPlacementAnalyticsSeriesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementPublicShare"></a>
# **Get-InboxPlacementPublicShare**
> InboxPlacementPublicShareDto Get-InboxPlacementPublicShare<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShareToken] <String><br>

Get a public inbox placement share

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ShareToken = "ShareToken_example" # String | 

# Get a public inbox placement share
try {
     $Result = Get-InboxPlacementPublicShare -ShareToken $ShareToken
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementPublicShare: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShareToken** | **String**|  | 

### Return type

[**InboxPlacementPublicShareDto**](InboxPlacementPublicShareDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementPublicShareAnalysis"></a>
# **Get-InboxPlacementPublicShareAnalysis**
> InboxPlacementAnalysisBundleDto Get-InboxPlacementPublicShareAnalysis<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShareToken] <String><br>

Get public inbox placement share analysis

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ShareToken = "ShareToken_example" # String | 

# Get public inbox placement share analysis
try {
     $Result = Get-InboxPlacementPublicShareAnalysis -ShareToken $ShareToken
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementPublicShareAnalysis: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShareToken** | **String**|  | 

### Return type

[**InboxPlacementAnalysisBundleDto**](InboxPlacementAnalysisBundleDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementTest"></a>
# **Get-InboxPlacementTest**
> InboxPlacementTestRunDto Get-InboxPlacementTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get inbox placement test run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get inbox placement test run
try {
     $Result = Get-InboxPlacementTest -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementTestAnalysis"></a>
# **Get-InboxPlacementTestAnalysis**
> InboxPlacementAnalysisBundleDto Get-InboxPlacementTestAnalysis<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get inbox placement run analysis

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get inbox placement run analysis
try {
     $Result = Get-InboxPlacementTestAnalysis -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementTestAnalysis: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**InboxPlacementAnalysisBundleDto**](InboxPlacementAnalysisBundleDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementTestResults"></a>
# **Get-InboxPlacementTestResults**
> InboxPlacementTestResultsDto Get-InboxPlacementTestResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get inbox placement test results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get inbox placement test results
try {
     $Result = Get-InboxPlacementTestResults -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementTestResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**InboxPlacementTestResultsDto**](InboxPlacementTestResultsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-InboxPlacementTests"></a>
# **Get-InboxPlacementTests**
> InboxPlacementTestRunDto[] Get-InboxPlacementTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List inbox placement test runs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Limit = 987 # Int32 |  (optional) (default to 50)

# List inbox placement test runs
try {
     $Result = Get-InboxPlacementTests -Limit $Limit
} catch {
    Write-Host ("Exception occured when calling Get-InboxPlacementTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**|  | [optional] [default to 50]

### Return type

[**InboxPlacementTestRunDto[]**](InboxPlacementTestRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-PrepareInboxPlacementTest"></a>
# **Invoke-PrepareInboxPlacementTest**
> InboxPlacementTestRunDto Invoke-PrepareInboxPlacementTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxPlacementTestOptions] <PSCustomObject><br>

Prepare a direct-send inbox placement test without consuming allowance

Reserve seed addresses for the dashboard create flow. The run remains staged and allowance is not committed until send confirmation. Reuses a recent active preparation when possible.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxPlacementTestOptions = (Initialize-CreateInboxPlacementTestOptions -SeedlistProfile "SeedlistProfile_example" -RequestedSegment "ALL_INBOXES" -SenderDomain "SenderDomain_example" -FromEmail "FromEmail_example" -PublicShareRequested $false -AddressFormat "COMMA") # CreateInboxPlacementTestOptions | 

# Prepare a direct-send inbox placement test without consuming allowance
try {
     $Result = Invoke-PrepareInboxPlacementTest -CreateInboxPlacementTestOptions $CreateInboxPlacementTestOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-PrepareInboxPlacementTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxPlacementTestOptions** | [**CreateInboxPlacementTestOptions**](CreateInboxPlacementTestOptions)|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

