# AITransformMappingDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**AiTransformId** | **String** |  | 
**UserId** | **String** |  | 
**Name** | **String** |  | [optional] 
**EntityId** | **String** |  | 
**EntityType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AITransformMappingDto = Initialize-maislurp-client-powershellAITransformMappingDto  -Id null `
 -AiTransformId null `
 -UserId null `
 -Name null `
 -EntityId null `
 -EntityType null
```

- Convert the resource to JSON
```powershell
$AITransformMappingDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

