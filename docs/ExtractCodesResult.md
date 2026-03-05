# ExtractCodesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Found** | **Boolean** | True if at least one code candidate was found | 
**Code** | **String** | Best candidate code when found | [optional] 
**MethodUsed** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**Candidates** | [**CodeCandidate[]**](CodeCandidate) | Ranked code candidates | 
**Warnings** | **String[]** | Warnings or fallback notes explaining extraction behavior for debugging and QA. | 

## Examples

- Prepare the resource
```powershell
$ExtractCodesResult = Initialize-maislurp-client-powershellExtractCodesResult  -Found null `
 -Code null `
 -MethodUsed null `
 -Candidates null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$ExtractCodesResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

