# CreateAgentConversationHandoffOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReasonCode** | **String** |  | 
**Reason** | **String** |  | [optional] 
**Priority** | **String** |  | 
**SourceEmailId** | **String** |  | [optional] 
**DraftId** | **String** |  | [optional] 
**ExpectedVersion** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAgentConversationHandoffOptions = Initialize-maislurp-client-powershellCreateAgentConversationHandoffOptions  -ReasonCode null `
 -Reason null `
 -Priority null `
 -SourceEmailId null `
 -DraftId null `
 -ExpectedVersion null
```

- Convert the resource to JSON
```powershell
$CreateAgentConversationHandoffOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

