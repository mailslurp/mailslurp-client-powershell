# TestNewInboxRulesetOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxRulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions) |  | 
**CreateRulesetOptions** | [**CreateRulesetOptions**](CreateRulesetOptions) |  | 

## Examples

- Prepare the resource
```powershell
$TestNewInboxRulesetOptions = Initialize-maislurp-client-powershellTestNewInboxRulesetOptions  -InboxRulesetTestOptions null `
 -CreateRulesetOptions null
```

- Convert the resource to JSON
```powershell
$TestNewInboxRulesetOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

