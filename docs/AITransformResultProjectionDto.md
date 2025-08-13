# AITransformResultProjectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**AiTransformId** | **String** |  | 
**AiTransformMappingId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Value** | [**SystemCollectionsHashtable**]() |  | [optional] 
**EntityId** | **String** |  | [optional] 
**EntityType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AITransformResultProjectionDto = Initialize-maislurp-client-powershellAITransformResultProjectionDto  -Id null `
 -AiTransformId null `
 -AiTransformMappingId null `
 -UserId null `
 -Value null `
 -EntityId null `
 -EntityType null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$AITransformResultProjectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

