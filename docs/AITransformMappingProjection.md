# AITransformMappingProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**EntityType** | **String** |  | 
**AiTransformId** | **String** |  | 
**EntityId** | **String** |  | [optional] 
**ContentSelector** | **String** |  | [optional] 
**TriggerSelector** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AITransformMappingProjection = Initialize-maislurp-client-powershellAITransformMappingProjection  -Name null `
 -Id null `
 -UserId null `
 -CreatedAt null `
 -EntityType null `
 -AiTransformId null `
 -EntityId null `
 -ContentSelector null `
 -TriggerSelector null
```

- Convert the resource to JSON
```powershell
$AITransformMappingProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

