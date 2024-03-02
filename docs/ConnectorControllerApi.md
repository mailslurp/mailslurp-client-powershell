# maislurp-client-powershell.maislurp-client-powershell/Api.ConnectorControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Connector**](ConnectorControllerApi#New-Connector) | **POST** /connectors | Create an inbox connector
[**Invoke-DeleteAllConnector**](ConnectorControllerApi#Invoke-DeleteAllConnector) | **DELETE** /connectors | Delete all inbox connectors
[**Invoke-DeleteConnector**](ConnectorControllerApi#Invoke-DeleteConnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**Get-AllConnectorSyncEvents**](ConnectorControllerApi#Get-AllConnectorSyncEvents) | **GET** /connectors/events | Get all inbox connector sync events
[**Get-Connector**](ConnectorControllerApi#Get-Connector) | **GET** /connectors/{id} | Get an inbox connector
[**Get-ConnectorSyncEvent**](ConnectorControllerApi#Get-ConnectorSyncEvent) | **GET** /connectors/events/{id} | Get an inbox connector sync event
[**Get-ConnectorSyncEvents**](ConnectorControllerApi#Get-ConnectorSyncEvents) | **GET** /connectors/{id}/events | Get an inbox connector sync events
[**Get-Connectors**](ConnectorControllerApi#Get-Connectors) | **GET** /connectors | Get inbox connectors
[**Sync-Connector**](ConnectorControllerApi#Sync-Connector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**Update-Connector**](ConnectorControllerApi#Update-Connector) | **PUT** /connectors/{id} | Update an inbox connector


<a name="New-Connector"></a>
# **New-Connector**
> ConnectorDto New-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorOptions] <PSCustomObject><br>

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateConnectorOptions = (Initialize-CreateConnectorOptions -ConnectorType "IMAP" -ConnectorAuthType "PLAIN_TEXT" -ImapSettings (Initialize-CreateConnectorImapOptions -VarHost "VarHost_example" -Port 123 -Username "Username_example" -Password "Password_example" -UseSSL $false) -InboxId "InboxId_example" -SyncEnabled $false -SyncScheduleType "INTERVAL" -SyncInterval 123 -FetchSettings (Initialize-CreateConnectorImapFetchOptions -SelectFolder "SelectFolder_example" -SearchTerms "SearchTerms_example")) # CreateConnectorOptions | 

# Create an inbox connector
try {
     $Result = New-Connector -CreateConnectorOptions $CreateConnectorOptions
} catch {
    Write-Host ("Exception occured when calling New-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 

### Return type

[**ConnectorDto**](ConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllConnector"></a>
# **Invoke-DeleteAllConnector**
> void Invoke-DeleteAllConnector<br>

Delete all inbox connectors

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all inbox connectors
try {
     $Result = Invoke-DeleteAllConnector
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteConnector"></a>
# **Invoke-DeleteConnector**
> void Invoke-DeleteConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an inbox connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete an inbox connector
try {
     $Result = Invoke-DeleteConnector -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-AllConnectorSyncEvents"></a>
# **Get-AllConnectorSyncEvents**
> PageConnectorSyncEvents Get-AllConnectorSyncEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get all inbox connector sync events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in connector list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in connector list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get all inbox connector sync events
try {
     $Result = Get-AllConnectorSyncEvents -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-AllConnectorSyncEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in connector list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in connector list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnectorSyncEvents**](PageConnectorSyncEvents) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Connector"></a>
# **Get-Connector**
> ConnectorDto Get-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an inbox connector
try {
     $Result = Get-Connector -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**ConnectorDto**](ConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorSyncEvent"></a>
# **Get-ConnectorSyncEvent**
> ConnectorSyncEventDto Get-ConnectorSyncEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox connector sync event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an inbox connector sync event
try {
     $Result = Get-ConnectorSyncEvent -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorSyncEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**ConnectorSyncEventDto**](ConnectorSyncEventDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorSyncEvents"></a>
# **Get-ConnectorSyncEvents**
> PageConnectorSyncEvents Get-ConnectorSyncEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get an inbox connector sync events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$Page = 987 # Int32 | Optional page index in connector list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in connector list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get an inbox connector sync events
try {
     $Result = Get-ConnectorSyncEvents -Id $Id -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorSyncEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **Page** | **Int32**| Optional page index in connector list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in connector list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnectorSyncEvents**](PageConnectorSyncEvents) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Connectors"></a>
# **Get-Connectors**
> PageConnector Get-Connectors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get inbox connectors

List inbox connectors that sync external emails to MailSlurp inboxes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in connector list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in connector list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get inbox connectors
try {
     $Result = Get-Connectors -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-Connectors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in connector list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in connector list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnector**](PageConnector) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Sync-Connector"></a>
# **Sync-Connector**
> ConnectorSyncRequestResult Sync-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Sync an inbox connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Sync an inbox connector
try {
     $Result = Sync-Connector -Id $Id
} catch {
    Write-Host ("Exception occured when calling Sync-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-Connector"></a>
# **Update-Connector**
> ConnectorDto Update-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorOptions] <PSCustomObject><br>

Update an inbox connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorOptions = (Initialize-CreateConnectorOptions -ConnectorType "IMAP" -ConnectorAuthType "PLAIN_TEXT" -ImapSettings (Initialize-CreateConnectorImapOptions -VarHost "VarHost_example" -Port 123 -Username "Username_example" -Password "Password_example" -UseSSL $false) -InboxId "InboxId_example" -SyncEnabled $false -SyncScheduleType "INTERVAL" -SyncInterval 123 -FetchSettings (Initialize-CreateConnectorImapFetchOptions -SelectFolder "SelectFolder_example" -SearchTerms "SearchTerms_example")) # CreateConnectorOptions | 

# Update an inbox connector
try {
     $Result = Update-Connector -Id $Id -CreateConnectorOptions $CreateConnectorOptions
} catch {
    Write-Host ("Exception occured when calling Update-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 

### Return type

[**ConnectorDto**](ConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

