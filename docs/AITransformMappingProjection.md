# AITransformMappingProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**AiTransformId** | **String** |  | 
**EntityId** | **String** |  | 
**EntityType** | **String** |  | 
**ContentSelector** | **String** |  | [optional] 
**TriggerSelector** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AITransformMappingProjection = Initialize-maislurp-client-powershellAITransformMappingProjection  -UserId null `
 -AiTransformId null `
 -EntityId null `
 -EntityType null `
 -ContentSelector null `
 -TriggerSelector null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AITransformMappingProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

