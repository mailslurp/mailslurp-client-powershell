# AgentSmsConversationDetailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conversation** | [**AgentSmsConversationQueueItemDto**](AgentSmsConversationQueueItemDto) |  | 
**Activities** | [**AgentActivityDto[]**](AgentActivityDto) |  | 
**Notes** | [**AgentConversationNoteDto[]**](AgentConversationNoteDto) |  | 
**ActiveHandoff** | [**AgentConversationHandoffDto**](AgentConversationHandoffDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentSmsConversationDetailDto = Initialize-maislurp-client-powershellAgentSmsConversationDetailDto  -Conversation null `
 -Activities null `
 -Notes null `
 -ActiveHandoff null
```

- Convert the resource to JSON
```powershell
$AgentSmsConversationDetailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

