# SpellingIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | **String** |  | 
**Suggestion** | **String** |  | 
**Severity** | **String** |  | 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SpellingIssue = Initialize-maislurp-client-powershellSpellingIssue  -Group null `
 -Suggestion null `
 -Severity null `
 -Message null
```

- Convert the resource to JSON
```powershell
$SpellingIssue | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

