# ConnectorSyncEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConnectorId** | **String** |  | 
**SyncStatus** | **String** |  | 
**SyncCount** | **Int64** |  | 
**Message** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncEventDto = Initialize-maislurp-client-powershellConnectorSyncEventDto  -Id null `
 -ConnectorId null `
 -SyncStatus null `
 -SyncCount null `
 -Message null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

