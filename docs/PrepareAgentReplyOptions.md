# PrepareAgentReplyOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceEmailId** | **String** |  | 
**Reply** | [**ReplyToEmailOptions**](ReplyToEmailOptions) |  | 
**ExpectedConversationVersion** | **Int64** |  | [optional] 
**ExpectedLatestEmailId** | **String** |  | [optional] 
**InternalNote** | **String** |  | [optional] 
**ClaimId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PrepareAgentReplyOptions = Initialize-maislurp-client-powershellPrepareAgentReplyOptions  -SourceEmailId null `
 -Reply null `
 -ExpectedConversationVersion null `
 -ExpectedLatestEmailId null `
 -InternalNote null `
 -ClaimId null
```

- Convert the resource to JSON
```powershell
$PrepareAgentReplyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

