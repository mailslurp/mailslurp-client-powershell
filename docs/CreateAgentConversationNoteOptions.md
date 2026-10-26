# CreateAgentConversationNoteOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**SourceEmailId** | **String** |  | [optional] 
**DraftId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAgentConversationNoteOptions = Initialize-maislurp-client-powershellCreateAgentConversationNoteOptions  -Body null `
 -SourceEmailId null `
 -DraftId null
```

- Convert the resource to JSON
```powershell
$CreateAgentConversationNoteOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

