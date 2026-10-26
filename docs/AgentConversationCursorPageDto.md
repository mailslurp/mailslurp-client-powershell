# AgentConversationCursorPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**AgentConversationQueueItemDto[]**](AgentConversationQueueItemDto) |  | 
**NextCursor** | **String** |  | [optional] 
**HasMore** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentConversationCursorPageDto = Initialize-maislurp-client-powershellAgentConversationCursorPageDto  -Items null `
 -NextCursor null `
 -HasMore null
```

- Convert the resource to JSON
```powershell
$AgentConversationCursorPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

