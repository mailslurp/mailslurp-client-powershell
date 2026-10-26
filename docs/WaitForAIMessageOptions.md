# WaitForAIMessageOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**AIMessageScope**](AIMessageScope) |  | 
**Since** | **System.DateTime** |  | 
**Timeout** | **Int64** |  | 
**Before** | **System.DateTime** |  | [optional] 
**UnreadOnly** | **Boolean** |  | 
**SortDirection** | **String** |  | 
**Match** | [**AIMessageMatchOptions**](AIMessageMatchOptions) |  | [optional] 
**EmailMatchOptions** | [**MatchOptions**](MatchOptions) |  | [optional] 
**SmsMatchOptions** | [**SmsMatchOptions**](SmsMatchOptions) |  | [optional] 
**Assertions** | [**AIMessageAssertion[]**](AIMessageAssertion) |  | 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**TransformId** | **String** |  | [optional] 
**Instructions** | **String** |  | [optional] 
**AiOptions** | [**AIMessageAIOptions**](AIMessageAIOptions) |  | 
**ExtractionPreset** | **String** | Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE. | [optional] 

## Examples

- Prepare the resource
```powershell
$WaitForAIMessageOptions = Initialize-maislurp-client-powershellWaitForAIMessageOptions  -Scope null `
 -Since null `
 -Timeout null `
 -Before null `
 -UnreadOnly null `
 -SortDirection null `
 -Match null `
 -EmailMatchOptions null `
 -SmsMatchOptions null `
 -Assertions null `
 -OutputSchema null `
 -TransformId null `
 -Instructions null `
 -AiOptions null `
 -ExtractionPreset null
```

- Convert the resource to JSON
```powershell
$WaitForAIMessageOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

