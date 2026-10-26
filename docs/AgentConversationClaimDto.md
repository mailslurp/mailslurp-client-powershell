# AgentConversationClaimDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClaimId** | **String** |  | 
**ConversationId** | **String** |  | 
**ApiKeyEntityId** | **String** |  | 
**WorkerId** | **String** |  | 
**AcquiredAt** | **System.DateTime** |  | 
**ExpiresAt** | **System.DateTime** |  | 
**ConversationVersion** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentConversationClaimDto = Initialize-maislurp-client-powershellAgentConversationClaimDto  -ClaimId null `
 -ConversationId null `
 -ApiKeyEntityId null `
 -WorkerId null `
 -AcquiredAt null `
 -ExpiresAt null `
 -ConversationVersion null
```

- Convert the resource to JSON
```powershell
$AgentConversationClaimDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

