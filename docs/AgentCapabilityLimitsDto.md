# AgentCapabilityLimitsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxConversationPageSize** | **Int32** |  | 
**MaxThreadPageSize** | **Int32** |  | 
**MaxEventBatchSize** | **Int32** |  | 
**MaxLongPollSeconds** | **Int32** |  | 
**MaxClaimLeaseSeconds** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$AgentCapabilityLimitsDto = Initialize-maislurp-client-powershellAgentCapabilityLimitsDto  -MaxConversationPageSize null `
 -MaxThreadPageSize null `
 -MaxEventBatchSize null `
 -MaxLongPollSeconds null `
 -MaxClaimLeaseSeconds null
```

- Convert the resource to JSON
```powershell
$AgentCapabilityLimitsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

