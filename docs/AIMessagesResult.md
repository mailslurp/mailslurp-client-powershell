# AIMessagesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EvaluationId** | **String** |  | 
**Status** | **String** |  | 
**Results** | [**AIMessageExpectationResult[]**](AIMessageExpectationResult) |  | 
**Usage** | [**AIMessageUsage**](AIMessageUsage) |  | 
**ElapsedMs** | **Int64** |  | 
**Summary** | **String** |  | [readonly] 
**Successful** | **Boolean** |  | [readonly] 
**UnsatisfiedExpectationIds** | **String[]** |  | [readonly] 

## Examples

- Prepare the resource
```powershell
$AIMessagesResult = Initialize-maislurp-client-powershellAIMessagesResult  -EvaluationId null `
 -Status null `
 -Results null `
 -Usage null `
 -ElapsedMs null `
 -Summary null `
 -Successful null `
 -UnsatisfiedExpectationIds null
```

- Convert the resource to JSON
```powershell
$AIMessagesResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

