# AITransformProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Instructions** | **String[]** |  | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**Conditions** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AITransformProjection = Initialize-maislurp-client-powershellAITransformProjection  -Name null `
 -Id null `
 -CreatedAt null `
 -Instructions null `
 -OutputSchema null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$AITransformProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

