# AgentApiErrorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | 
**Message** | **String** |  | 
**Retryable** | **Boolean** |  | 
**SuggestedAction** | **String** |  | [optional] 
**RequestId** | **String** |  | 
**Details** | [**System.Collections.Hashtable**](SystemCollectionsHashtable) |  | 

## Examples

- Prepare the resource
```powershell
$AgentApiErrorDto = Initialize-maislurp-client-powershellAgentApiErrorDto  -Code null `
 -Message null `
 -Retryable null `
 -SuggestedAction null `
 -RequestId null `
 -Details null
```

- Convert the resource to JSON
```powershell
$AgentApiErrorDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

