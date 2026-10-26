# AgentAutomationEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventId** | **String** |  | 
**Type** | **String** |  | 
**SchemaVersion** | **Int32** |  | 
**OccurredAt** | **System.DateTime** |  | 
**PublishedAt** | **System.DateTime** |  | 
**ConversationId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**ConversationVersion** | **Int64** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**SmsId** | **String** |  | [optional] 
**SentSmsId** | **String** |  | [optional] 
**SourceType** | **String** |  | [optional] 
**SourceId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentAutomationEventDto = Initialize-maislurp-client-powershellAgentAutomationEventDto  -EventId null `
 -Type null `
 -SchemaVersion null `
 -OccurredAt null `
 -PublishedAt null `
 -ConversationId null `
 -InboxId null `
 -EmailId null `
 -ConversationVersion null `
 -PhoneNumberId null `
 -SmsId null `
 -SentSmsId null `
 -SourceType null `
 -SourceId null
```

- Convert the resource to JSON
```powershell
$AgentAutomationEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

