# AIMessageMatchResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Reason** | **String** |  | 
**Evidence** | [**AIMessageEvidence[]**](AIMessageEvidence) |  | 
**Confidence** | [**AIMessageConfidence**](AIMessageConfidence) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AIMessageMatchResult = Initialize-maislurp-client-powershellAIMessageMatchResult  -Status null `
 -Reason null `
 -Evidence null `
 -Confidence null
```

- Convert the resource to JSON
```powershell
$AIMessageMatchResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

