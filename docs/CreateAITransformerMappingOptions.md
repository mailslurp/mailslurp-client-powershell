# CreateAITransformerMappingOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**AiTransformId** | **String** |  | 
**EntityId** | **String** |  | [optional] 
**EntityType** | **String** |  | 
**ContentSelector** | **String** |  | [optional] 
**TriggerSelector** | **String** |  | [optional] 
**SpreadRootArray** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAITransformerMappingOptions = Initialize-maislurp-client-powershellCreateAITransformerMappingOptions  -Name null `
 -AiTransformId null `
 -EntityId null `
 -EntityType null `
 -ContentSelector null `
 -TriggerSelector null `
 -SpreadRootArray null
```

- Convert the resource to JSON
```powershell
$CreateAITransformerMappingOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

