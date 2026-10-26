# AgentAutomationEventPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | [**AgentAutomationEventDto[]**](AgentAutomationEventDto) |  | 
**NextCursor** | **String** |  | 
**HasMore** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentAutomationEventPageDto = Initialize-maislurp-client-powershellAgentAutomationEventPageDto  -Events null `
 -NextCursor null `
 -HasMore null
```

- Convert the resource to JSON
```powershell
$AgentAutomationEventPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

