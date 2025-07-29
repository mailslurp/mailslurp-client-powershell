# InvokeTransformerOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AiTransformId** | **String** |  | [optional] 
**AiTransformMappingId** | **String** |  | [optional] 
**RawInput** | **String** |  | [optional] 
**EntityId** | **String** |  | [optional] 
**EntityType** | **String** |  | [optional] 
**RawConditions** | **String[]** |  | [optional] 
**RawInstructions** | **String[]** |  | [optional] 
**RawOutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**ContentSelector** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InvokeTransformerOptions = Initialize-maislurp-client-powershellInvokeTransformerOptions  -AiTransformId null `
 -AiTransformMappingId null `
 -RawInput null `
 -EntityId null `
 -EntityType null `
 -RawConditions null `
 -RawInstructions null `
 -RawOutputSchema null `
 -ContentSelector null
```

- Convert the resource to JSON
```powershell
$InvokeTransformerOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

