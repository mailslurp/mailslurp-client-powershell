# AgentActivityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**ApiKeyEntityId** | **String** |  | [optional] 
**AgentName** | **String** |  | [optional] 
**AgentRole** | **String** |  | [optional] 
**EventType** | **String** |  | 
**Status** | **String** |  | 
**ToolName** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**DraftId** | **String** |  | [optional] 
**ErrorMessage** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**ConversationId** | **String** |  | [optional] 
**ThreadId** | **String** |  | [optional] 
**ActionName** | **String** |  | [optional] 
**ActionRequestId** | **String** |  | [optional] 
**ErrorCode** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**SmsId** | **String** |  | [optional] 
**SentSmsId** | **String** |  | [optional] 
**SmsParticipant** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentActivityDto = Initialize-maislurp-client-powershellAgentActivityDto  -Id null `
 -UserId null `
 -ApiKeyEntityId null `
 -AgentName null `
 -AgentRole null `
 -EventType null `
 -Status null `
 -ToolName null `
 -InboxId null `
 -EmailId null `
 -DraftId null `
 -ErrorMessage null `
 -CreatedAt null `
 -ConversationId null `
 -ThreadId null `
 -ActionName null `
 -ActionRequestId null `
 -ErrorCode null `
 -PhoneNumberId null `
 -SmsId null `
 -SentSmsId null `
 -SmsParticipant null
```

- Convert the resource to JSON
```powershell
$AgentActivityDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

