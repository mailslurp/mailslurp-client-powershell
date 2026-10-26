# GetNextAgentWorkItemOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkerId** | **String** |  | 
**LeaseSeconds** | **Int32** |  | 
**Cursor** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**HasAttachments** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetNextAgentWorkItemOptions = Initialize-maislurp-client-powershellGetNextAgentWorkItemOptions  -WorkerId null `
 -LeaseSeconds null `
 -Cursor null `
 -InboxId null `
 -HasAttachments null
```

- Convert the resource to JSON
```powershell
$GetNextAgentWorkItemOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

