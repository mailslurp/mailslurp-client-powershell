# AITransformResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**AiTransformId** | **String** |  | 
**AiTransformMappingId** | **String** |  | 
**Value** | [**SystemCollectionsHashtable**]() |  | 
**EntityId** | **String** |  | 
**EntityType** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AITransformResultDto = Initialize-maislurp-client-powershellAITransformResultDto  -Id null `
 -UserId null `
 -AiTransformId null `
 -AiTransformMappingId null `
 -Value null `
 -EntityId null `
 -EntityType null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AITransformResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

