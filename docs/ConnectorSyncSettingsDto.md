# ConnectorSyncSettingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**ConnectorId** | **String** |  | 
**SyncEnabled** | **Boolean** |  | 
**SyncScheduleType** | **String** |  | [optional] 
**SyncInterval** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncSettingsDto = Initialize-maislurp-client-powershellConnectorSyncSettingsDto  -Id null `
 -UserId null `
 -ConnectorId null `
 -SyncEnabled null `
 -SyncScheduleType null `
 -SyncInterval null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncSettingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

