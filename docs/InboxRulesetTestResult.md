# InboxRulesetTestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarMatches** | **Boolean** |  | 
**RulesetMatches** | **System.Collections.Hashtable** | Map of inbox ruleset ID to boolean of if target matches | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxRulesetTestResult = Initialize-maislurp-client-powershellInboxRulesetTestResult  -VarMatches null `
 -RulesetMatches null
```

- Convert the resource to JSON
```powershell
$InboxRulesetTestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

