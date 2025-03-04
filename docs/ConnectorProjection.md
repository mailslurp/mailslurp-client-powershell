# ConnectorProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Enabled** | **Boolean** |  | [optional] 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorProjection = Initialize-maislurp-client-powershellConnectorProjection  -CreatedAt null `
 -Enabled null `
 -UserId null `
 -EmailAddress null `
 -InboxId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

