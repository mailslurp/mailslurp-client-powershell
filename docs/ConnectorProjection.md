# ConnectorProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Enabled** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorProjection = Initialize-maislurp-client-powershellConnectorProjection  -UserId null `
 -EmailAddress null `
 -InboxId null `
 -Enabled null `
 -CreatedAt null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

