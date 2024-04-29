# CheckEmailBodyResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasIssues** | **Boolean** |  | 
**LinkIssues** | [**LinkIssue[]**](LinkIssue) |  | 
**ImageIssues** | [**ImageIssue[]**](ImageIssue) |  | 
**SpellingIssues** | [**SpellingIssue[]**](SpellingIssue) |  | 

## Examples

- Prepare the resource
```powershell
$CheckEmailBodyResults = Initialize-maislurp-client-powershellCheckEmailBodyResults  -HasIssues null `
 -LinkIssues null `
 -ImageIssues null `
 -SpellingIssues null
```

- Convert the resource to JSON
```powershell
$CheckEmailBodyResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

