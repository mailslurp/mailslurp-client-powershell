# AgentWorkerHeartbeatDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConnectionId** | **String** |  | 
**WorkerId** | **String** |  | 
**InstanceId** | **String** |  | 
**Release** | **String** |  | [optional] 
**FirstSeenAt** | **System.DateTime** |  | 
**LastSeenAt** | **System.DateTime** |  | 
**StaleAfter** | **System.DateTime** |  | 
**Status** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AgentWorkerHeartbeatDto = Initialize-maislurp-client-powershellAgentWorkerHeartbeatDto  -Id null `
 -ConnectionId null `
 -WorkerId null `
 -InstanceId null `
 -Release null `
 -FirstSeenAt null `
 -LastSeenAt null `
 -StaleAfter null `
 -Status null
```

- Convert the resource to JSON
```powershell
$AgentWorkerHeartbeatDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

