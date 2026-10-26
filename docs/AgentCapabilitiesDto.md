# AgentCapabilitiesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** |  | 
**AccountId** | **String** |  | 
**Name** | **String** |  | 
**Role** | **String** |  | 
**Permissions** | **String[]** |  | 
**Scope** | [**AgentCapabilityScopeDto**](AgentCapabilityScopeDto) |  | 
**Features** | [**AgentCapabilityFeaturesDto**](AgentCapabilityFeaturesDto) |  | 
**Limits** | [**AgentCapabilityLimitsDto**](AgentCapabilityLimitsDto) |  | 
**ApiVersion** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AgentCapabilitiesDto = Initialize-maislurp-client-powershellAgentCapabilitiesDto  -ConnectionId null `
 -AccountId null `
 -Name null `
 -Role null `
 -Permissions null `
 -Scope null `
 -Features null `
 -Limits null `
 -ApiVersion null
```

- Convert the resource to JSON
```powershell
$AgentCapabilitiesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

