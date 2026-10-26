# AgentInboxSendPolicyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | 
**Recipients** | **String[]** |  | 
**Allowed** | **Boolean** |  | 
**ReasonCode** | **String** |  | [optional] 
**BlockingRulesetIds** | **String[]** |  | 
**OperatorUrl** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AgentInboxSendPolicyDto = Initialize-maislurp-client-powershellAgentInboxSendPolicyDto  -InboxId null `
 -Recipients null `
 -Allowed null `
 -ReasonCode null `
 -BlockingRulesetIds null `
 -OperatorUrl null
```

- Convert the resource to JSON
```powershell
$AgentInboxSendPolicyDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

