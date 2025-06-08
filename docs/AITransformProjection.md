# AITransformProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | **String[]** |  | [optional] 
**Instructions** | **String[]** |  | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AITransformProjection = Initialize-maislurp-client-powershellAITransformProjection  -Conditions null `
 -Instructions null `
 -OutputSchema null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AITransformProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

