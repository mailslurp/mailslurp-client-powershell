# AcquireAgentConversationClaimOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkerId** | **String** |  | 
**LeaseSeconds** | **Int32** |  | 
**ExpectedVersion** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AcquireAgentConversationClaimOptions = Initialize-maislurp-client-powershellAcquireAgentConversationClaimOptions  -WorkerId null `
 -LeaseSeconds null `
 -ExpectedVersion null
```

- Convert the resource to JSON
```powershell
$AcquireAgentConversationClaimOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

