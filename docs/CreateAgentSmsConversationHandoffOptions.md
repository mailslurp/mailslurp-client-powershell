# CreateAgentSmsConversationHandoffOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReasonCode** | **String** |  | 
**Reason** | **String** |  | [optional] 
**Priority** | **String** |  | 
**SourceSmsId** | **String** |  | [optional] 
**ExpectedVersion** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAgentSmsConversationHandoffOptions = Initialize-maislurp-client-powershellCreateAgentSmsConversationHandoffOptions  -ReasonCode null `
 -Reason null `
 -Priority null `
 -SourceSmsId null `
 -ExpectedVersion null
```

- Convert the resource to JSON
```powershell
$CreateAgentSmsConversationHandoffOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

