# AIMessageExpectation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Scope** | [**AIMessageScope**](AIMessageScope) |  | 
**Match** | [**AIMessageMatchOptions**](AIMessageMatchOptions) |  | [optional] 
**EmailMatchOptions** | [**MatchOptions**](MatchOptions) |  | [optional] 
**SmsMatchOptions** | [**SmsMatchOptions**](SmsMatchOptions) |  | [optional] 
**Assertions** | [**AIMessageAssertion[]**](AIMessageAssertion) |  | 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**TransformId** | **String** |  | [optional] 
**Instructions** | **String** |  | [optional] 
**ExtractionPreset** | **String** | Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE. | [optional] 

## Examples

- Prepare the resource
```powershell
$AIMessageExpectation = Initialize-maislurp-client-powershellAIMessageExpectation  -Id null `
 -Scope null `
 -Match null `
 -EmailMatchOptions null `
 -SmsMatchOptions null `
 -Assertions null `
 -OutputSchema null `
 -TransformId null `
 -Instructions null `
 -ExtractionPreset null
```

- Convert the resource to JSON
```powershell
$AIMessageExpectation | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

