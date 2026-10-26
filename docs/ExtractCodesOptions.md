# ExtractCodesOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**AllowFallback** | **Boolean** | Allow fallback to deterministic pattern extraction when the selected method is unavailable. | [optional] [default to $true]
**MinLength** | **Int32** | Minimum code length to consider. Typical OTP values are between 4 and 8 characters. | [optional] [default to 4]
**MaxLength** | **Int32** | Maximum code length to consider. | [optional] [default to 10]
**MaxCandidates** | **Int32** | Maximum number of code candidates to return. Best candidate is also returned separately. | [optional] [default to 5]
**CustomPatterns** | **String[]** | Optional custom regex patterns for code extraction. Each pattern should have either one capture group for the code or match the full code directly. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExtractCodesOptions = Initialize-maislurp-client-powershellExtractCodesOptions  -Method null `
 -AllowFallback null `
 -MinLength null `
 -MaxLength null `
 -MaxCandidates null `
 -CustomPatterns null
```

- Convert the resource to JSON
```powershell
$ExtractCodesOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

