# ConnectorProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**SyncEnabled** | **Boolean** |  | [optional] 
**SyncScheduleType** | **String** |  | 
**SyncInterval** | **Int32** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorProjection = Initialize-maislurp-client-powershellConnectorProjection  -Enabled null `
 -EmailAddress null `
 -UserId null `
 -InboxId null `
 -SyncEnabled null `
 -SyncScheduleType null `
 -SyncInterval null `
 -CreatedAt null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

