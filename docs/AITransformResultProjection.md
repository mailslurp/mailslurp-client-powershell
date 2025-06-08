# AITransformResultProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**AiTransformId** | **String** |  | 
**EntityId** | **String** |  | 
**EntityType** | **String** |  | 
**AiTransformMappingId** | **String** |  | 
**Value** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AITransformResultProjection = Initialize-maislurp-client-powershellAITransformResultProjection  -UserId null `
 -AiTransformId null `
 -EntityId null `
 -EntityType null `
 -AiTransformMappingId null `
 -Value null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AITransformResultProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

