# InboxRulesetTestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RulesetMatches** | **System.Collections.Hashtable** | Map of inbox ruleset ID to boolean of if target matches | 
**VarMatches** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$InboxRulesetTestResult = Initialize-maislurp-client-powershellInboxRulesetTestResult  -RulesetMatches null `
 -VarMatches null
```

- Convert the resource to JSON
```powershell
$InboxRulesetTestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

