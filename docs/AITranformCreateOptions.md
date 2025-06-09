# AITranformCreateOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Conditions** | **String[]** |  | [optional] 
**Instructions** | **String[]** |  | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AITranformCreateOptions = Initialize-maislurp-client-powershellAITranformCreateOptions  -Name null `
 -Conditions null `
 -Instructions null `
 -OutputSchema null
```

- Convert the resource to JSON
```powershell
$AITranformCreateOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

