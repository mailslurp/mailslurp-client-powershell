# AgentWorkItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conversation** | [**AgentConversationDetailV2Dto**](AgentConversationDetailV2Dto) |  | [optional] 
**Claim** | [**AgentConversationClaimDto**](AgentConversationClaimDto) |  | [optional] 
**NextCursor** | **String** |  | [optional] 
**HasMore** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentWorkItemDto = Initialize-maislurp-client-powershellAgentWorkItemDto  -Conversation null `
 -Claim null `
 -NextCursor null `
 -HasMore null
```

- Convert the resource to JSON
```powershell
$AgentWorkItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

