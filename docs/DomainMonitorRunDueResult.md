# DomainMonitorRunDueResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TriggerSource** | **String** |  | 
**RunCount** | **Int32** |  | 
**RequestedMaxRuns** | **Int32** |  | 
**ExecutedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorRunDueResult = Initialize-maislurp-client-powershellDomainMonitorRunDueResult  -TriggerSource null `
 -RunCount null `
 -RequestedMaxRuns null `
 -ExecutedAt null
```

- Convert the resource to JSON
```powershell
$DomainMonitorRunDueResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

