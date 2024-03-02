# ConnectorProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**InboxId** | **String** |  | 
**UserId** | **String** |  | 
**SyncEnabled** | **Boolean** |  | 
**ConnectorType** | **String** |  | 
**SyncScheduleType** | **String** |  | 
**SyncInterval** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorProjection = Initialize-maislurp-client-powershellConnectorProjection  -CreatedAt null `
 -InboxId null `
 -UserId null `
 -SyncEnabled null `
 -ConnectorType null `
 -SyncScheduleType null `
 -SyncInterval null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

