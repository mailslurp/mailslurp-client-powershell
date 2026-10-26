# ConnectorEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** | **String** |  | 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Size** | **Int64** |  | 
**Status** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Seen** | **Boolean** |  | [optional] 
**ConnectorId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorEventProjection = Initialize-maislurp-client-powershellConnectorEventProjection  -EventType null `
 -Message null `
 -Id null `
 -Size null `
 -Status null `
 -CreatedAt null `
 -Seen null `
 -ConnectorId null
```

- Convert the resource to JSON
```powershell
$ConnectorEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

