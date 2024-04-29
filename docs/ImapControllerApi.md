# maislurp-client-powershell.maislurp-client-powershell/Api.ImapControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ImapServerFetch**](ImapControllerApi#Invoke-ImapServerFetch) | **POST** /imap/server/fetch | Fetch message in an inbox
[**Invoke-ImapServerList**](ImapControllerApi#Invoke-ImapServerList) | **POST** /imap/server/list | List messages in an inbox
[**Invoke-ImapServerSearch**](ImapControllerApi#Invoke-ImapServerSearch) | **POST** /imap/server/search | Search messages in an inbox
[**Invoke-ImapServerStatus**](ImapControllerApi#Invoke-ImapServerStatus) | **POST** /imap/server/status | Get status for mailbox
[**Invoke-ImapServerUpdateFlags**](ImapControllerApi#Invoke-ImapServerUpdateFlags) | **POST** /imap/server/update-flags | 


<a name="Invoke-ImapServerFetch"></a>
# **Invoke-ImapServerFetch**
> ImapServerFetchResult Invoke-ImapServerFetch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SeqNum] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Fetch message in an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SeqNum = 987 # Int64 | 
$InboxId = "InboxId_example" # String | Inbox ID to search (optional)

# Fetch message in an inbox
try {
     $Result = Invoke-ImapServerFetch -SeqNum $SeqNum -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-ImapServerFetch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SeqNum** | **Int64**|  | 
 **InboxId** | [**String**](String)| Inbox ID to search | [optional] 

### Return type

[**ImapServerFetchResult**](ImapServerFetchResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ImapServerList"></a>
# **Invoke-ImapServerList**
> ImapServerListResult Invoke-ImapServerList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ImapServerListOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

List messages in an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ImapServerListOptions = (Initialize-ImapServerListOptions -UidSet "UidSet_example" -SeqSet "SeqSet_example") # ImapServerListOptions | 
$InboxId = "InboxId_example" # String | Inbox ID to list (optional)

# List messages in an inbox
try {
     $Result = Invoke-ImapServerList -ImapServerListOptions $ImapServerListOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-ImapServerList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ImapServerListOptions** | [**ImapServerListOptions**](ImapServerListOptions)|  | 
 **InboxId** | [**String**](String)| Inbox ID to list | [optional] 

### Return type

[**ImapServerListResult**](ImapServerListResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ImapServerSearch"></a>
# **Invoke-ImapServerSearch**
> ImapServerSearchResult Invoke-ImapServerSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ImapServerSearchOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Search messages in an inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ImapServerSearchOptions = (Initialize-ImapServerSearchOptions -SeqNum "SeqNum_example" -Uid "Uid_example" -Since Get-Date -Before Get-Date -SentSince Get-Date -SentBefore Get-Date -Header "TODO" -Body @("Body_example") -Text @("Text_example") -WithFlags @("WithFlags_example") -WithoutFlags @("WithoutFlags_example")) # ImapServerSearchOptions | 
$InboxId = "InboxId_example" # String | Inbox ID to search (optional)

# Search messages in an inbox
try {
     $Result = Invoke-ImapServerSearch -ImapServerSearchOptions $ImapServerSearchOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-ImapServerSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ImapServerSearchOptions** | [**ImapServerSearchOptions**](ImapServerSearchOptions)|  | 
 **InboxId** | [**String**](String)| Inbox ID to search | [optional] 

### Return type

[**ImapServerSearchResult**](ImapServerSearchResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ImapServerStatus"></a>
# **Invoke-ImapServerStatus**
> ImapServerStatusResult Invoke-ImapServerStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ImapServerStatusOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get status for mailbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ImapServerStatusOptions = (Initialize-ImapServerStatusOptions -Name "Name_example" -StatusItems @("MESSAGES")) # ImapServerStatusOptions | 
$InboxId = "InboxId_example" # String | Inbox ID to list (optional)

# Get status for mailbox
try {
     $Result = Invoke-ImapServerStatus -ImapServerStatusOptions $ImapServerStatusOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-ImapServerStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ImapServerStatusOptions** | [**ImapServerStatusOptions**](ImapServerStatusOptions)|  | 
 **InboxId** | [**String**](String)| Inbox ID to list | [optional] 

### Return type

[**ImapServerStatusResult**](ImapServerStatusResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ImapServerUpdateFlags"></a>
# **Invoke-ImapServerUpdateFlags**
> void Invoke-ImapServerUpdateFlags<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ImapUpdateFlagsOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>



Update message flags

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ImapUpdateFlagsOptions = (Initialize-ImapUpdateFlagsOptions -Operation "FLAGS" -Flags @("Flags_example") -UidSet "UidSet_example" -SeqSet "SeqSet_example") # ImapUpdateFlagsOptions | 
$InboxId = "InboxId_example" # String |  (optional)

try {
     $Result = Invoke-ImapServerUpdateFlags -ImapUpdateFlagsOptions $ImapUpdateFlagsOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-ImapServerUpdateFlags: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ImapUpdateFlagsOptions** | [**ImapUpdateFlagsOptions**](ImapUpdateFlagsOptions)|  | 
 **InboxId** | [**String**](String)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

