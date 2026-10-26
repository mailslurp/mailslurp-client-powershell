# AIMessageAssertionResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Status** | **String** |  | 
**Reason** | **String** |  | 
**Evidence** | [**AIMessageEvidence[]**](AIMessageEvidence) |  | 
**Confidence** | [**AIMessageConfidence**](AIMessageConfidence) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AIMessageAssertionResult = Initialize-maislurp-client-powershellAIMessageAssertionResult  -Id null `
 -Status null `
 -Reason null `
 -Evidence null `
 -Confidence null
```

- Convert the resource to JSON
```powershell
$AIMessageAssertionResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

