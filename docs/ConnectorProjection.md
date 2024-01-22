# ConnectorProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**SyncEnabled** | **Boolean** |  | 
**ConnectorType** | **String** |  | 
**SyncScheduleType** | **String** |  | 
**SyncInterval** | **Int32** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorProjection = Initialize-maislurp-client-powershellConnectorProjection  -UserId null `
 -InboxId null `
 -SyncEnabled null `
 -ConnectorType null `
 -SyncScheduleType null `
 -SyncInterval null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

