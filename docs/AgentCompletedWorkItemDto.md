# AgentCompletedWorkItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SentEmail** | [**SentEmailDto**](SentEmailDto) |  | 
**ConversationId** | **String** |  | 
**ClaimReleased** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentCompletedWorkItemDto = Initialize-maislurp-client-powershellAgentCompletedWorkItemDto  -SentEmail null `
 -ConversationId null `
 -ClaimReleased null
```

- Convert the resource to JSON
```powershell
$AgentCompletedWorkItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

