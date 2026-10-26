# AIMessageResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EvaluationId** | **String** |  | 
**Status** | **String** |  | 
**Summary** | **String** |  | 
**Model** | [**AIMessageModelDto**](AIMessageModelDto) |  | 
**Usage** | [**AIMessageUsage**](AIMessageUsage) |  | 
**ElapsedMs** | **Int64** |  | 
**Message** | [**AIMessageReference**](AIMessageReference) |  | [optional] 
**Email** | [**Email**](Email) |  | [optional] 
**Sms** | [**SmsDto**](SmsDto) |  | [optional] 
**Match** | [**AIMessageMatchResult**](AIMessageMatchResult) |  | [optional] 
**AssertionStatus** | **String** |  | [optional] 
**Assertions** | [**AIMessageAssertionResult[]**](AIMessageAssertionResult) |  | 
**VarData** | [**SystemCollectionsHashtable**]() | Extracted JSON value conforming to the requested schema or extraction preset. Null when extraction is inconclusive or unavailable. | [optional] 
**ExtractionEvidence** | [**System.Collections.Hashtable**](Array) |  | 
**Candidates** | [**AIMessageCandidateResult[]**](AIMessageCandidateResult) |  | 
**ExtractionReason** | **String** | Explanation when extraction is inconclusive. May contain a model-reported explanation of missing or ambiguous fields, or a server evidence-validation failure. Diagnostic text, not a stable machine-readable status. | [optional] 
**Successful** | **Boolean** | True only when all requested work succeeded. Assert this in tests and use summary as the assertion failure message. | [readonly] 
**FailedAssertionIds** | **String[]** |  | [readonly] 

## Examples

- Prepare the resource
```powershell
$AIMessageResult = Initialize-maislurp-client-powershellAIMessageResult  -EvaluationId null `
 -Status null `
 -Summary null `
 -Model null `
 -Usage null `
 -ElapsedMs null `
 -Message null `
 -Email null `
 -Sms null `
 -Match null `
 -AssertionStatus null `
 -Assertions null `
 -VarData null `
 -ExtractionEvidence null `
 -Candidates null `
 -ExtractionReason null `
 -Successful null `
 -FailedAssertionIds null
```

- Convert the resource to JSON
```powershell
$AIMessageResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

