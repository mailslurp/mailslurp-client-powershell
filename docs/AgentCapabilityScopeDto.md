# AgentCapabilityScopeDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountWide** | **Boolean** |  | 
**InboxIds** | **String[]** |  | 
**InboxTags** | **String[]** |  | 
**PhoneNumberIds** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$AgentCapabilityScopeDto = Initialize-maislurp-client-powershellAgentCapabilityScopeDto  -AccountWide null `
 -InboxIds null `
 -InboxTags null `
 -PhoneNumberIds null
```

- Convert the resource to JSON
```powershell
$AgentCapabilityScopeDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

