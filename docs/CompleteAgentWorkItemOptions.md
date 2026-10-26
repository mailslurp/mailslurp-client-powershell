# CompleteAgentWorkItemOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceEmailId** | **String** |  | 
**Reply** | [**ReplyToEmailOptions**](ReplyToEmailOptions) |  | 
**IdempotencyKey** | **String** |  | 
**ExpectedConversationVersion** | **Int64** |  | [optional] 
**ExpectedLatestEmailId** | **String** |  | [optional] 
**ClaimId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CompleteAgentWorkItemOptions = Initialize-maislurp-client-powershellCompleteAgentWorkItemOptions  -SourceEmailId null `
 -Reply null `
 -IdempotencyKey null `
 -ExpectedConversationVersion null `
 -ExpectedLatestEmailId null `
 -ClaimId null
```

- Convert the resource to JSON
```powershell
$CompleteAgentWorkItemOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

