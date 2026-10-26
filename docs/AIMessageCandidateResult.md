# AIMessageCandidateResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AIMessageReference**](AIMessageReference) |  | 
**Match** | [**AIMessageMatchResult**](AIMessageMatchResult) |  | 

## Examples

- Prepare the resource
```powershell
$AIMessageCandidateResult = Initialize-maislurp-client-powershellAIMessageCandidateResult  -Message null `
 -Match null
```

- Convert the resource to JSON
```powershell
$AIMessageCandidateResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

