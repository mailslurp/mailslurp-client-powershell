# CreateConnectorOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectorType** | **String** |  | 
**ConnectorAuthType** | **String** |  | 
**ImapSettings** | [**CreateConnectorImapOptions**](CreateConnectorImapOptions) |  | [optional] 
**InboxId** | **String** |  | [optional] 
**SyncEnabled** | **Boolean** |  | 
**SyncScheduleType** | **String** |  | 
**SyncInterval** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorOptions = Initialize-maislurp-client-powershellCreateConnectorOptions  -ConnectorType null `
 -ConnectorAuthType null `
 -ImapSettings null `
 -InboxId null `
 -SyncEnabled null `
 -SyncScheduleType null `
 -SyncInterval null
```

- Convert the resource to JSON
```powershell
$CreateConnectorOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

