# AgentSmsConversationQueueItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConversationId** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**PhoneNumber** | **String** |  | [optional] 
**OtherPhoneNumber** | **String** |  | 
**LastBody** | **String** |  | [optional] 
**LatestMessageDirection** | **String** |  | 
**LatestMessageId** | **String** |  | [optional] 
**LatestReceivedSmsId** | **String** |  | [optional] 
**LatestSentSmsId** | **String** |  | [optional] 
**MessageCount** | **Int32** |  | 
**UnreadCount** | **Int32** |  | 
**HasMedia** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**LastMessageAt** | **System.DateTime** |  | 
**ProjectedAt** | **System.DateTime** |  | 
**Version** | **Int64** |  | 
**WorkflowState** | **String** |  | 
**Outcome** | **String** |  | [optional] 
**ReviewStatus** | **String** |  | 
**RequiresHumanReview** | **Boolean** |  | 
**NeedsOperationalAttention** | **Boolean** |  | 
**Claim** | [**AgentConversationClaimDto**](AgentConversationClaimDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentSmsConversationQueueItemDto = Initialize-maislurp-client-powershellAgentSmsConversationQueueItemDto  -ConversationId null `
 -PhoneNumberId null `
 -PhoneNumber null `
 -OtherPhoneNumber null `
 -LastBody null `
 -LatestMessageDirection null `
 -LatestMessageId null `
 -LatestReceivedSmsId null `
 -LatestSentSmsId null `
 -MessageCount null `
 -UnreadCount null `
 -HasMedia null `
 -CreatedAt null `
 -LastMessageAt null `
 -ProjectedAt null `
 -Version null `
 -WorkflowState null `
 -Outcome null `
 -ReviewStatus null `
 -RequiresHumanReview null `
 -NeedsOperationalAttention null `
 -Claim null
```

- Convert the resource to JSON
```powershell
$AgentSmsConversationQueueItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

