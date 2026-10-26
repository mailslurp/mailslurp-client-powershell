# AgentConversationDetailV2Dto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conversation** | [**AgentConversationQueueItemDto**](AgentConversationQueueItemDto) |  | 
**Activities** | [**AgentActivityDto[]**](AgentActivityDto) |  | 
**Notes** | [**AgentConversationNoteDto[]**](AgentConversationNoteDto) |  | 
**ActiveHandoff** | [**AgentConversationHandoffDto**](AgentConversationHandoffDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentConversationDetailV2Dto = Initialize-maislurp-client-powershellAgentConversationDetailV2Dto  -Conversation null `
 -Activities null `
 -Notes null `
 -ActiveHandoff null
```

- Convert the resource to JSON
```powershell
$AgentConversationDetailV2Dto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

