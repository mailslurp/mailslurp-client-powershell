# ExtractAIMessageOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AIMessageReference**](AIMessageReference) |  | 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**TransformId** | **String** |  | [optional] 
**Instructions** | **String** |  | [optional] 
**Timeout** | **Int64** |  | 
**AiOptions** | [**AIMessageAIOptions**](AIMessageAIOptions) |  | 
**ExtractionPreset** | **String** | Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExtractAIMessageOptions = Initialize-maislurp-client-powershellExtractAIMessageOptions  -Message null `
 -OutputSchema null `
 -TransformId null `
 -Instructions null `
 -Timeout null `
 -AiOptions null `
 -ExtractionPreset null
```

- Convert the resource to JSON
```powershell
$ExtractAIMessageOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

