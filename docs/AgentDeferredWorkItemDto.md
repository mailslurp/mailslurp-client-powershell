# AgentDeferredWorkItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Handoff** | [**AgentConversationHandoffDto**](AgentConversationHandoffDto) |  | 
**Conversation** | [**AgentConversationDetailV2Dto**](AgentConversationDetailV2Dto) |  | 
**ClaimReleased** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentDeferredWorkItemDto = Initialize-maislurp-client-powershellAgentDeferredWorkItemDto  -Handoff null `
 -Conversation null `
 -ClaimReleased null
```

- Convert the resource to JSON
```powershell
$AgentDeferredWorkItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

