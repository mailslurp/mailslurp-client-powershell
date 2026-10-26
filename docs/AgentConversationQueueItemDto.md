# AgentConversationQueueItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConversationId** | **String** |  | 
**ThreadId** | **String** |  | 
**InboxId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**Customer** | **String** |  | [optional] 
**LastSender** | **String** |  | [optional] 
**LastExcerpt** | **String** |  | [optional] 
**LatestMessageDirection** | **String** |  | 
**LatestEmailId** | **String** |  | [optional] 
**LatestReceivedEmailId** | **String** |  | [optional] 
**LatestSentEmailId** | **String** |  | [optional] 
**MessageCount** | **Int32** |  | 
**UnreadCount** | **Int32** |  | 
**HasAttachments** | **Boolean** |  | 
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
$AgentConversationQueueItemDto = Initialize-maislurp-client-powershellAgentConversationQueueItemDto  -ConversationId null `
 -ThreadId null `
 -InboxId null `
 -Subject null `
 -Customer null `
 -LastSender null `
 -LastExcerpt null `
 -LatestMessageDirection null `
 -LatestEmailId null `
 -LatestReceivedEmailId null `
 -LatestSentEmailId null `
 -MessageCount null `
 -UnreadCount null `
 -HasAttachments null `
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
$AgentConversationQueueItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

