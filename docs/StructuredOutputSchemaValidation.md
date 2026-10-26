# StructuredOutputSchemaValidation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **Boolean** |  | 
**Errors** | **String[]** |  | [optional] 
**ExampleOutput** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StructuredOutputSchemaValidation = Initialize-maislurp-client-powershellStructuredOutputSchemaValidation  -Valid null `
 -Errors null `
 -ExampleOutput null
```

- Convert the resource to JSON
```powershell
$StructuredOutputSchemaValidation | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

