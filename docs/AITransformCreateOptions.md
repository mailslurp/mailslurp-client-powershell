# AITransformCreateOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Conditions** | **String[]** |  | [optional] 
**Instructions** | **String[]** |  | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**OutputSchemaId** | **String** |  | [optional] 
**ExtractPrompt** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AITransformCreateOptions = Initialize-maislurp-client-powershellAITransformCreateOptions  -Name null `
 -Conditions null `
 -Instructions null `
 -OutputSchema null `
 -OutputSchemaId null `
 -ExtractPrompt null
```

- Convert the resource to JSON
```powershell
$AITransformCreateOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

