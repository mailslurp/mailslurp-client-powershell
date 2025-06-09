# CreateConnectorWithOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreateConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions) |  | 
**CreateConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions) |  | [optional] 
**CreateConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions) |  | [optional] 
**CreateConnectorSyncSettingsOptions** | [**CreateConnectorSyncSettingsOptions**](CreateConnectorSyncSettingsOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorWithOptions = Initialize-maislurp-client-powershellCreateConnectorWithOptions  -CreateConnectorOptions null `
 -CreateConnectorImapConnectionOptions null `
 -CreateConnectorSmtpConnectionOptions null `
 -CreateConnectorSyncSettingsOptions null
```

- Convert the resource to JSON
```powershell
$CreateConnectorWithOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

