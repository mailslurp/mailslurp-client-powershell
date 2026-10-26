# AgentConversationHandoffDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConversationId** | **String** |  | 
**RequestedByApiKeyEntityId** | **String** |  | [optional] 
**RequestedByUserId** | **String** |  | [optional] 
**ReasonCode** | **String** |  | 
**Reason** | **String** |  | [optional] 
**Priority** | **String** |  | 
**Status** | **String** |  | 
**AssignedUserId** | **String** |  | [optional] 
**SourceEmailId** | **String** |  | [optional] 
**DraftId** | **String** |  | [optional] 
**Version** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**CompletedAt** | **System.DateTime** |  | [optional] 
**SourceSmsId** | **String** |  | [optional] 
**ConversationVersion** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentConversationHandoffDto = Initialize-maislurp-client-powershellAgentConversationHandoffDto  -Id null `
 -ConversationId null `
 -RequestedByApiKeyEntityId null `
 -RequestedByUserId null `
 -ReasonCode null `
 -Reason null `
 -Priority null `
 -Status null `
 -AssignedUserId null `
 -SourceEmailId null `
 -DraftId null `
 -Version null `
 -CreatedAt null `
 -UpdatedAt null `
 -CompletedAt null `
 -SourceSmsId null `
 -ConversationVersion null
```

- Convert the resource to JSON
```powershell
$AgentConversationHandoffDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

