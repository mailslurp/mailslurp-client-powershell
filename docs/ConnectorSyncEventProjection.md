# ConnectorSyncEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**ConnectorId** | **String** |  | 
**SyncCount** | **Int64** |  | 
**SyncStatus** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncEventProjection = Initialize-maislurp-client-powershellConnectorSyncEventProjection  -Message null `
 -Id null `
 -CreatedAt null `
 -ConnectorId null `
 -SyncCount null `
 -SyncStatus null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

