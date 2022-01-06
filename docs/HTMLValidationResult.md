# HTMLValidationResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**ValidationMessage[]**](ValidationMessage) | Optional errors resulting from HTML validation | [optional] 
**Warnings** | [**ValidationMessage[]**](ValidationMessage) | Optional warnings resulting from HTML validation | [optional] 
**Valid** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HTMLValidationResult = Initialize-maislurp-client-powershellHTMLValidationResult  -Errors null `
 -Warnings null `
 -Valid null
```

- Convert the resource to JSON
```powershell
$HTMLValidationResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

