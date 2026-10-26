# ConnectorEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConnectorId** | **String** |  | 
**Status** | **String** |  | 
**EventType** | **String** |  | 
**Size** | **Int64** |  | 
**Message** | **String** |  | [optional] 
**Logs** | **String** |  | [optional] 
**Seen** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorEventDto = Initialize-maislurp-client-powershellConnectorEventDto  -Id null `
 -ConnectorId null `
 -Status null `
 -EventType null `
 -Size null `
 -Message null `
 -Logs null `
 -Seen null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ConnectorEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

