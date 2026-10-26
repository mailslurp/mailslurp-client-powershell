# AutomatedInboxPlacementEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ExecutionId** | **String** |  | 
**EventType** | **String** |  | 
**Details** | **System.Collections.Hashtable** | Non-secret execution diagnostics. Credentials and message content are never included. | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AutomatedInboxPlacementEventDto = Initialize-maislurp-client-powershellAutomatedInboxPlacementEventDto  -Id null `
 -ExecutionId null `
 -EventType null `
 -Details null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$AutomatedInboxPlacementEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

