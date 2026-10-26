# AgentPreparedReplyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Draft** | [**EmailDraftDto**](EmailDraftDto) |  | 
**Conversation** | [**AgentConversationDetailV2Dto**](AgentConversationDetailV2Dto) |  | 
**ClaimReleased** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentPreparedReplyDto = Initialize-maislurp-client-powershellAgentPreparedReplyDto  -Draft null `
 -Conversation null `
 -ClaimReleased null
```

- Convert the resource to JSON
```powershell
$AgentPreparedReplyDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

