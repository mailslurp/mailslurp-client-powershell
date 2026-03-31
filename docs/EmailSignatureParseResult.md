# EmailSignatureParseResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Present** | **Boolean** | True when a signature block was detected | 
**Signature** | [**EmailSignature**](EmailSignature) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailSignatureParseResult = Initialize-maislurp-client-powershellEmailSignatureParseResult  -Present null `
 -Signature null
```

- Convert the resource to JSON
```powershell
$EmailSignatureParseResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

