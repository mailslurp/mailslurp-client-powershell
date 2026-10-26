# AgentSmsConversationCursorPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**AgentSmsConversationQueueItemDto[]**](AgentSmsConversationQueueItemDto) |  | 
**NextCursor** | **String** |  | [optional] 
**HasMore** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentSmsConversationCursorPageDto = Initialize-maislurp-client-powershellAgentSmsConversationCursorPageDto  -Items null `
 -NextCursor null `
 -HasMore null
```

- Convert the resource to JSON
```powershell
$AgentSmsConversationCursorPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

