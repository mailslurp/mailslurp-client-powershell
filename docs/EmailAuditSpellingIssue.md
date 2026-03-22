# EmailAuditSpellingIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | **String** |  | [optional] 
**Suggestion** | **String** |  | [optional] 
**Severity** | **String** |  | [optional] 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailAuditSpellingIssue = Initialize-maislurp-client-powershellEmailAuditSpellingIssue  -Group null `
 -Suggestion null `
 -Severity null `
 -Message null
```

- Convert the resource to JSON
```powershell
$EmailAuditSpellingIssue | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

