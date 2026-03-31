# ConnectorEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Size** | **Int64** |  | 
**Status** | **String** |  | 
**EventType** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**ConnectorId** | **String** |  | 
**Seen** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorEventProjection = Initialize-maislurp-client-powershellConnectorEventProjection  -Message null `
 -Id null `
 -Size null `
 -Status null `
 -EventType null `
 -CreatedAt null `
 -ConnectorId null `
 -Seen null
```

- Convert the resource to JSON
```powershell
$ConnectorEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

