# DeferAgentWorkItemOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReasonCode** | **String** |  | 
**Reason** | **String** |  | [optional] 
**Priority** | **String** |  | 
**SourceEmailId** | **String** |  | [optional] 
**DraftId** | **String** |  | [optional] 
**ExpectedConversationVersion** | **Int64** |  | [optional] 
**ClaimId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeferAgentWorkItemOptions = Initialize-maislurp-client-powershellDeferAgentWorkItemOptions  -ReasonCode null `
 -Reason null `
 -Priority null `
 -SourceEmailId null `
 -DraftId null `
 -ExpectedConversationVersion null `
 -ClaimId null
```

- Convert the resource to JSON
```powershell
$DeferAgentWorkItemOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

