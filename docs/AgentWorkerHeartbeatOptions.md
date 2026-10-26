# AgentWorkerHeartbeatOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkerId** | **String** |  | 
**InstanceId** | **String** |  | 
**Release** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentWorkerHeartbeatOptions = Initialize-maislurp-client-powershellAgentWorkerHeartbeatOptions  -WorkerId null `
 -InstanceId null `
 -Release null
```

- Convert the resource to JSON
```powershell
$AgentWorkerHeartbeatOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

