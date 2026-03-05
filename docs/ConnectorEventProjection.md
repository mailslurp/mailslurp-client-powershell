# ConnectorEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EventType** | **String** |  | 
**ConnectorId** | **String** |  | 
**Seen** | **Boolean** |  | [optional] 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Size** | **Int64** |  | 
**Status** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorEventProjection = Initialize-maislurp-client-powershellConnectorEventProjection  -CreatedAt null `
 -EventType null `
 -ConnectorId null `
 -Seen null `
 -Message null `
 -Id null `
 -Size null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ConnectorEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

