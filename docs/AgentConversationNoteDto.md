# AgentConversationNoteDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConversationId** | **String** |  | 
**ActorType** | **String** |  | 
**ActorApiKeyEntityId** | **String** |  | [optional] 
**ActorUserId** | **String** |  | [optional] 
**Body** | **String** |  | 
**SourceEmailId** | **String** |  | [optional] 
**DraftId** | **String** |  | [optional] 
**HandoffId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**SourceSmsId** | **String** |  | [optional] 
**ConversationVersion** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentConversationNoteDto = Initialize-maislurp-client-powershellAgentConversationNoteDto  -Id null `
 -ConversationId null `
 -ActorType null `
 -ActorApiKeyEntityId null `
 -ActorUserId null `
 -Body null `
 -SourceEmailId null `
 -DraftId null `
 -HandoffId null `
 -CreatedAt null `
 -SourceSmsId null `
 -ConversationVersion null
```

- Convert the resource to JSON
```powershell
$AgentConversationNoteDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

