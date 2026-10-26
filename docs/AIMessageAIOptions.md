# AIMessageAIOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Model** | **String** |  | 
**MaxTokens** | **Int64** |  | 
**MaxCandidates** | **Int32** |  | 
**MaxOutputTokens** | **Int32** |  | 
**MinimumConfidence** | **Double** | Optional advanced abstention threshold for model-reported confidence. Below it the decision is INCONCLUSIVE. It does not guarantee accuracy or cause reevaluation. | [optional] 

## Examples

- Prepare the resource
```powershell
$AIMessageAIOptions = Initialize-maislurp-client-powershellAIMessageAIOptions  -Model null `
 -MaxTokens null `
 -MaxCandidates null `
 -MaxOutputTokens null `
 -MinimumConfidence null
```

- Convert the resource to JSON
```powershell
$AIMessageAIOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

