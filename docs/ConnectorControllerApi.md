# maislurp-client-powershell.maislurp-client-powershell/Api.ConnectorControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Connector**](ConnectorControllerApi#New-Connector) | **POST** /connectors | Create an inbox connector
[**New-ConnectorImapConnection**](ConnectorControllerApi#New-ConnectorImapConnection) | **POST** /connectors/{id}/imap | Create an inbox connector IMAP connection
[**New-ConnectorSmtpConnection**](ConnectorControllerApi#New-ConnectorSmtpConnection) | **POST** /connectors/{id}/smtp | Create an inbox connector SMTP connection
[**New-ConnectorSyncSettings**](ConnectorControllerApi#New-ConnectorSyncSettings) | **POST** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**New-ConnectorWithOptions**](ConnectorControllerApi#New-ConnectorWithOptions) | **POST** /connectors/withOptions | Create an inbox connector with options
[**Invoke-DeleteAllConnector**](ConnectorControllerApi#Invoke-DeleteAllConnector) | **DELETE** /connectors | Delete all inbox connectors
[**Invoke-DeleteConnector**](ConnectorControllerApi#Invoke-DeleteConnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**Invoke-DeleteConnectorImapConnection**](ConnectorControllerApi#Invoke-DeleteConnectorImapConnection) | **DELETE** /connectors/{id}/imap | Delete an inbox connector IMAP connection
[**Invoke-DeleteConnectorSmtpConnection**](ConnectorControllerApi#Invoke-DeleteConnectorSmtpConnection) | **DELETE** /connectors/{id}/smtp | Delete an inbox connector SMTP connection
[**Invoke-DeleteConnectorSyncSettings**](ConnectorControllerApi#Invoke-DeleteConnectorSyncSettings) | **DELETE** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**Get-AllConnectorEvents**](ConnectorControllerApi#Get-AllConnectorEvents) | **GET** /connectors/events | Get all inbox connector events
[**Get-Connector**](ConnectorControllerApi#Get-Connector) | **GET** /connectors/{id} | Get an inbox connector
[**Get-ConnectorByEmailAddress**](ConnectorControllerApi#Get-ConnectorByEmailAddress) | **GET** /connectors/by-email-address | Get connector by email address
[**Get-ConnectorByInboxId**](ConnectorControllerApi#Get-ConnectorByInboxId) | **GET** /connectors/by-inbox-id | Get connector by inbox ID
[**Get-ConnectorByName**](ConnectorControllerApi#Get-ConnectorByName) | **GET** /connectors/by-name | Get connector by name
[**Get-ConnectorEvent**](ConnectorControllerApi#Get-ConnectorEvent) | **GET** /connectors/events/{id} | Get an inbox connector event
[**Get-ConnectorEvents**](ConnectorControllerApi#Get-ConnectorEvents) | **GET** /connectors/{id}/events | Get an inbox connector events
[**Get-ConnectorImapConnection**](ConnectorControllerApi#Get-ConnectorImapConnection) | **GET** /connectors/{id}/imap | Get an inbox connector IMAP connection
[**Get-ConnectorProviderSettings**](ConnectorControllerApi#Get-ConnectorProviderSettings) | **GET** /connectors/provider-settings | Get SMTP and IMAP connection settings for common mail providers
[**Get-ConnectorSmtpConnection**](ConnectorControllerApi#Get-ConnectorSmtpConnection) | **GET** /connectors/{id}/smtp | Get an inbox connector SMTP connection
[**Get-ConnectorSyncSettings**](ConnectorControllerApi#Get-ConnectorSyncSettings) | **GET** /connectors/{id}/sync-settings | Get an inbox connector sync settings
[**Get-Connectors**](ConnectorControllerApi#Get-Connectors) | **GET** /connectors | Get inbox connectors
[**Send-EmailFromConnector**](ConnectorControllerApi#Send-EmailFromConnector) | **POST** /connectors/{id}/send | Send from an inbox connector
[**Sync-Connector**](ConnectorControllerApi#Sync-Connector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**Test-ConnectorImapConnection**](ConnectorControllerApi#Test-ConnectorImapConnection) | **POST** /connectors/{id}/imap/test | Test an inbox connector IMAP connection
[**Test-ConnectorImapConnectionOptions**](ConnectorControllerApi#Test-ConnectorImapConnectionOptions) | **POST** /connectors/connections/imap/test | Test an inbox connector IMAP connection options
[**Test-ConnectorSmtpConnection**](ConnectorControllerApi#Test-ConnectorSmtpConnection) | **POST** /connectors/{id}/smtp/test | Test an inbox connector SMTP connection
[**Test-ConnectorSmtpConnectionOptions**](ConnectorControllerApi#Test-ConnectorSmtpConnectionOptions) | **POST** /connectors/connections/smtp/test | Test an inbox connector SMTP connection options
[**Update-Connector**](ConnectorControllerApi#Update-Connector) | **PUT** /connectors/{id} | Update an inbox connector
[**Update-ConnectorImapConnection**](ConnectorControllerApi#Update-ConnectorImapConnection) | **PATCH** /connectors/{id}/imap | Update an inbox connector IMAP connection
[**Update-ConnectorSmtpConnection**](ConnectorControllerApi#Update-ConnectorSmtpConnection) | **PATCH** /connectors/{id}/smtp | Update an inbox connector SMTP connection


<a name="New-Connector"></a>
# **New-Connector**
> ConnectorDto New-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

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

$CreateConnectorOptions = (Initialize-CreateConnectorOptions -Name "Name_example" -EmailAddress "EmailAddress_example" -Enabled $false) # CreateConnectorOptions | 
$InboxId = "InboxId_example" # String | Optional inbox ID to associate with the connector (optional)

# Create an inbox connector
try {
     $Result = New-Connector -CreateConnectorOptions $CreateConnectorOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling New-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 
 **InboxId** | [**String**](String)| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-ConnectorImapConnection"></a>
# **New-ConnectorImapConnection**
> ConnectorImapConnectionDto New-ConnectorImapConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorImapConnectionOptions] <PSCustomObject><br>

Create an inbox connector IMAP connection

Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorImapConnectionOptions = (Initialize-CreateConnectorImapConnectionOptions -ImapSsl $false -ImapUsername "ImapUsername_example" -ImapPassword "ImapPassword_example" -SelectFolder "SelectFolder_example" -SearchTerms "SearchTerms_example" -ImapPort 123 -ImapHost "ImapHost_example" -Enabled $false -StartTls $false -ProxyEnabled $false -ProxyPort 123 -ProxyHost "ProxyHost_example" -LocalHostName "LocalHostName_example" -Mechanisms @("Mechanisms_example") -SslTrust "SslTrust_example" -SslProtocols @("SslProtocols_example")) # CreateConnectorImapConnectionOptions | 

# Create an inbox connector IMAP connection
try {
     $Result = New-ConnectorImapConnection -Id $Id -CreateConnectorImapConnectionOptions $CreateConnectorImapConnectionOptions
} catch {
    Write-Host ("Exception occured when calling New-ConnectorImapConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-ConnectorSmtpConnection"></a>
# **New-ConnectorSmtpConnection**
> ConnectorSmtpConnectionDto New-ConnectorSmtpConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorSmtpConnectionOptions] <PSCustomObject><br>

Create an inbox connector SMTP connection

Allows sending via connector and email is routed to connected inbox and sent via SMTP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorSmtpConnectionOptions = (Initialize-CreateConnectorSmtpConnectionOptions -Enabled $false -SmtpHost "SmtpHost_example" -SmtpPort 123 -SmtpSsl $false -SmtpUsername "SmtpUsername_example" -SmtpPassword "SmtpPassword_example" -SmtpMechanisms @("SmtpMechanisms_example") -StartTls $false -LocalHostName "LocalHostName_example" -ProxyHost "ProxyHost_example" -ProxyPort 123 -ProxyEnabled $false -SslTrust "SslTrust_example" -SslProtocols @("SslProtocols_example")) # CreateConnectorSmtpConnectionOptions | 

# Create an inbox connector SMTP connection
try {
     $Result = New-ConnectorSmtpConnection -Id $Id -CreateConnectorSmtpConnectionOptions $CreateConnectorSmtpConnectionOptions
} catch {
    Write-Host ("Exception occured when calling New-ConnectorSmtpConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-ConnectorSyncSettings"></a>
# **New-ConnectorSyncSettings**
> ConnectorSyncSettingsDto New-ConnectorSyncSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorSyncSettingsOptions] <PSCustomObject><br>

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorSyncSettingsOptions = (Initialize-CreateConnectorSyncSettingsOptions -SyncEnabled $false -SyncScheduleType "INTERVAL" -SyncInterval 123) # CreateConnectorSyncSettingsOptions | 

# Create an inbox connector sync settings
try {
     $Result = New-ConnectorSyncSettings -Id $Id -CreateConnectorSyncSettingsOptions $CreateConnectorSyncSettingsOptions
} catch {
    Write-Host ("Exception occured when calling New-ConnectorSyncSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorSyncSettingsOptions** | [**CreateConnectorSyncSettingsOptions**](CreateConnectorSyncSettingsOptions)|  | 

### Return type

[**ConnectorSyncSettingsDto**](ConnectorSyncSettingsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-ConnectorWithOptions"></a>
# **New-ConnectorWithOptions**
> ConnectorDto New-ConnectorWithOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorWithOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Create an inbox connector with options

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateConnectorWithOptions = (Initialize-CreateConnectorWithOptions -CreateConnectorOptions (Initialize-CreateConnectorOptions -Name "Name_example" -EmailAddress "EmailAddress_example" -Enabled $false) -CreateConnectorImapConnectionOptions (Initialize-CreateConnectorImapConnectionOptions -ImapSsl $false -ImapUsername "ImapUsername_example" -ImapPassword "ImapPassword_example" -SelectFolder "SelectFolder_example" -SearchTerms "SearchTerms_example" -ImapPort 123 -ImapHost "ImapHost_example" -Enabled $false -StartTls $false -ProxyEnabled $false -ProxyPort 123 -ProxyHost "ProxyHost_example" -LocalHostName "LocalHostName_example" -Mechanisms @("Mechanisms_example") -SslTrust "SslTrust_example" -SslProtocols @("SslProtocols_example")) -CreateConnectorSmtpConnectionOptions (Initialize-CreateConnectorSmtpConnectionOptions -Enabled $false -SmtpHost "SmtpHost_example" -SmtpPort 123 -SmtpSsl $false -SmtpUsername "SmtpUsername_example" -SmtpPassword "SmtpPassword_example" -SmtpMechanisms @("SmtpMechanisms_example") -StartTls $false -LocalHostName "LocalHostName_example" -ProxyHost "ProxyHost_example" -ProxyPort 123 -ProxyEnabled $false -SslTrust "SslTrust_example" -SslProtocols @("SslProtocols_example")) -CreateConnectorSyncSettingsOptions (Initialize-CreateConnectorSyncSettingsOptions -SyncEnabled $false -SyncScheduleType "INTERVAL" -SyncInterval 123)) # CreateConnectorWithOptions | 
$InboxId = "InboxId_example" # String | Optional inbox ID to associate with the connector (optional)

# Create an inbox connector with options
try {
     $Result = New-ConnectorWithOptions -CreateConnectorWithOptions $CreateConnectorWithOptions -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling New-ConnectorWithOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateConnectorWithOptions** | [**CreateConnectorWithOptions**](CreateConnectorWithOptions)|  | 
 **InboxId** | [**String**](String)| Optional inbox ID to associate with the connector | [optional] 

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

<a name="Invoke-DeleteConnectorImapConnection"></a>
# **Invoke-DeleteConnectorImapConnection**
> void Invoke-DeleteConnectorImapConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an inbox connector IMAP connection

Delete IMAP connection for external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete an inbox connector IMAP connection
try {
     $Result = Invoke-DeleteConnectorImapConnection -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteConnectorImapConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteConnectorSmtpConnection"></a>
# **Invoke-DeleteConnectorSmtpConnection**
> void Invoke-DeleteConnectorSmtpConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an inbox connector SMTP connection

Delete SMTP connection for external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete an inbox connector SMTP connection
try {
     $Result = Invoke-DeleteConnectorSmtpConnection -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteConnectorSmtpConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteConnectorSyncSettings"></a>
# **Invoke-DeleteConnectorSyncSettings**
> void Invoke-DeleteConnectorSyncSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Create an inbox connector sync settings
try {
     $Result = Invoke-DeleteConnectorSyncSettings -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteConnectorSyncSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-AllConnectorEvents"></a>
# **Get-AllConnectorEvents**
> PageConnectorEvents Get-AllConnectorEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>

Get all inbox connector events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | Optional connector ID (optional)
$Page = 987 # Int32 | Optional page index in connector list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in connector list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)
$EventType = "SEND" # String | Filter by event type (optional)

# Get all inbox connector events
try {
     $Result = Get-AllConnectorEvents -Id $Id -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -EventType $EventType
} catch {
    Write-Host ("Exception occured when calling Get-AllConnectorEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| Optional connector ID | [optional] 
 **Page** | **Int32**| Optional page index in connector list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in connector list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 
 **EventType** | **String**| Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents) (PSCustomObject)

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

<a name="Get-ConnectorByEmailAddress"></a>
# **Get-ConnectorByEmailAddress**
> OptionalConnectorDto Get-ConnectorByEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Get connector by email address

Find an inbox connector by email address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailAddress = "EmailAddress_example" # String | Email address to search for connector by

# Get connector by email address
try {
     $Result = Get-ConnectorByEmailAddress -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorByEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailAddress** | **String**| Email address to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorByInboxId"></a>
# **Get-ConnectorByInboxId**
> OptionalConnectorDto Get-ConnectorByInboxId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Get connector by inbox ID

Find an inbox connector by inbox ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Inbox ID to search for connector by

# Get connector by inbox ID
try {
     $Result = Get-ConnectorByInboxId -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorByInboxId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Inbox ID to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorByName"></a>
# **Get-ConnectorByName**
> OptionalConnectorDto Get-ConnectorByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get connector by name

Find an inbox connector by name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String | Name to search for connector by

# Get connector by name
try {
     $Result = Get-ConnectorByName -Name $Name
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorEvent"></a>
# **Get-ConnectorEvent**
> ConnectorEventDto Get-ConnectorEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox connector event

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an inbox connector event
try {
     $Result = Get-ConnectorEvent -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**ConnectorEventDto**](ConnectorEventDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorEvents"></a>
# **Get-ConnectorEvents**
> PageConnectorEvents Get-ConnectorEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String><br>

Get an inbox connector events

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
$EventType = "SEND" # String | Filter by event type (optional)

# Get an inbox connector events
try {
     $Result = Get-ConnectorEvents -Id $Id -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -EventType $EventType
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **EventType** | **String**| Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorImapConnection"></a>
# **Get-ConnectorImapConnection**
> OptionalConnectorImapConnectionDto Get-ConnectorImapConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox connector IMAP connection

Get IMAP connection for external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an inbox connector IMAP connection
try {
     $Result = Get-ConnectorImapConnection -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorImapConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**OptionalConnectorImapConnectionDto**](OptionalConnectorImapConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorProviderSettings"></a>
# **Get-ConnectorProviderSettings**
> ConnectorProviderSettingsDto Get-ConnectorProviderSettings<br>

Get SMTP and IMAP connection settings for common mail providers

Get common mail provider SMTP and IMAP connection settings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get SMTP and IMAP connection settings for common mail providers
try {
     $Result = Get-ConnectorProviderSettings
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorProviderSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectorProviderSettingsDto**](ConnectorProviderSettingsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorSmtpConnection"></a>
# **Get-ConnectorSmtpConnection**
> OptionalConnectorSmtpConnectionDto Get-ConnectorSmtpConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox connector SMTP connection

Get SMTP connection for external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an inbox connector SMTP connection
try {
     $Result = Get-ConnectorSmtpConnection -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorSmtpConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**OptionalConnectorSmtpConnectionDto**](OptionalConnectorSmtpConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ConnectorSyncSettings"></a>
# **Get-ConnectorSyncSettings**
> OptionalConnectorSyncSettingsDto Get-ConnectorSyncSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an inbox connector sync settings

Get sync settings for connection with external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an inbox connector sync settings
try {
     $Result = Get-ConnectorSyncSettings -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-ConnectorSyncSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**OptionalConnectorSyncSettingsDto**](OptionalConnectorSyncSettingsDto) (PSCustomObject)

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

<a name="Send-EmailFromConnector"></a>
# **Send-EmailFromConnector**
> SentEmailDto Send-EmailFromConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseFallback] <System.Nullable[Boolean]><br>

Send from an inbox connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example"))) # SendEmailOptions | 
$UseFallback = true # Boolean |  (optional)

# Send from an inbox connector
try {
     $Result = Send-EmailFromConnector -Id $Id -SendEmailOptions $SendEmailOptions -UseFallback $UseFallback
} catch {
    Write-Host ("Exception occured when calling Send-EmailFromConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **UseFallback** | **Boolean**|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Sync-Connector"></a>
# **Sync-Connector**
> ConnectorSyncRequestResult Sync-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Folder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Logging] <System.Nullable[Boolean]><br>

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
$Since = Get-Date # System.DateTime | Date to request emails since (optional)
$Folder = "Folder_example" # String | Which folder to sync emails with (optional)
$Logging = true # Boolean | Enable or disable logging for the sync operation (optional)

# Sync an inbox connector
try {
     $Result = Sync-Connector -Id $Id -Since $Since -Folder $Folder -Logging $Logging
} catch {
    Write-Host ("Exception occured when calling Sync-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **Since** | **System.DateTime**| Date to request emails since | [optional] 
 **Folder** | **String**| Which folder to sync emails with | [optional] 
 **Logging** | **Boolean**| Enable or disable logging for the sync operation | [optional] 

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-ConnectorImapConnection"></a>
# **Test-ConnectorImapConnection**
> ConnectorImapConnectionTestResult Test-ConnectorImapConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorImapConnectionOptions] <PSCustomObject><br>

Test an inbox connector IMAP connection

Test the IMAP connection for a connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorImapConnectionOptions =  # CreateConnectorImapConnectionOptions |  (optional)

# Test an inbox connector IMAP connection
try {
     $Result = Test-ConnectorImapConnection -Id $Id -CreateConnectorImapConnectionOptions $CreateConnectorImapConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Test-ConnectorImapConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | [optional] 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-ConnectorImapConnectionOptions"></a>
# **Test-ConnectorImapConnectionOptions**
> ConnectorImapConnectionTestResult Test-ConnectorImapConnectionOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorImapConnectionOptions] <PSCustomObject><br>

Test an inbox connector IMAP connection options

Test the IMAP connection options for a connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateConnectorImapConnectionOptions =  # CreateConnectorImapConnectionOptions | 

# Test an inbox connector IMAP connection options
try {
     $Result = Test-ConnectorImapConnectionOptions -CreateConnectorImapConnectionOptions $CreateConnectorImapConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Test-ConnectorImapConnectionOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-ConnectorSmtpConnection"></a>
# **Test-ConnectorSmtpConnection**
> ConnectorSmtpConnectionTestResult Test-ConnectorSmtpConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorSmtpConnectionOptions] <PSCustomObject><br>

Test an inbox connector SMTP connection

Test the SMTP connection for a connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorSmtpConnectionOptions =  # CreateConnectorSmtpConnectionOptions |  (optional)

# Test an inbox connector SMTP connection
try {
     $Result = Test-ConnectorSmtpConnection -Id $Id -CreateConnectorSmtpConnectionOptions $CreateConnectorSmtpConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Test-ConnectorSmtpConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | [optional] 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-ConnectorSmtpConnectionOptions"></a>
# **Test-ConnectorSmtpConnectionOptions**
> ConnectorSmtpConnectionTestResult Test-ConnectorSmtpConnectionOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorSmtpConnectionOptions] <PSCustomObject><br>

Test an inbox connector SMTP connection options

Test the SMTP connection options for a connector

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateConnectorSmtpConnectionOptions =  # CreateConnectorSmtpConnectionOptions | 

# Test an inbox connector SMTP connection options
try {
     $Result = Test-ConnectorSmtpConnectionOptions -CreateConnectorSmtpConnectionOptions $CreateConnectorSmtpConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Test-ConnectorSmtpConnectionOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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
$CreateConnectorOptions =  # CreateConnectorOptions | 

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

<a name="Update-ConnectorImapConnection"></a>
# **Update-ConnectorImapConnection**
> ConnectorImapConnectionDto Update-ConnectorImapConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorImapConnectionOptions] <PSCustomObject><br>

Update an inbox connector IMAP connection

Update IMAP connection for external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorImapConnectionOptions =  # CreateConnectorImapConnectionOptions | 

# Update an inbox connector IMAP connection
try {
     $Result = Update-ConnectorImapConnection -Id $Id -CreateConnectorImapConnectionOptions $CreateConnectorImapConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Update-ConnectorImapConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Update-ConnectorSmtpConnection"></a>
# **Update-ConnectorSmtpConnection**
> ConnectorSmtpConnectionDto Update-ConnectorSmtpConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateConnectorSmtpConnectionOptions] <PSCustomObject><br>

Update an inbox connector SMTP connection

Update SMTP connection for external inbox

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$CreateConnectorSmtpConnectionOptions =  # CreateConnectorSmtpConnectionOptions | 

# Update an inbox connector SMTP connection
try {
     $Result = Update-ConnectorSmtpConnection -Id $Id -CreateConnectorSmtpConnectionOptions $CreateConnectorSmtpConnectionOptions
} catch {
    Write-Host ("Exception occured when calling Update-ConnectorSmtpConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **CreateConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

