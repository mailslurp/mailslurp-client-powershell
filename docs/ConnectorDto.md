# ConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | 
**EmailAddress** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorDto = Initialize-maislurp-client-powershellConnectorDto  -Id null `
 -Name null `
 -Enabled null `
 -EmailAddress null `
 -UserId null `
 -InboxId null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

