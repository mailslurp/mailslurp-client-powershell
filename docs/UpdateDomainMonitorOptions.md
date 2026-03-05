# UpdateDomainMonitorOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Optional display name | [optional] 
**IntervalSeconds** | **Int64** | Interval in seconds | [optional] 
**Enabled** | **Boolean** | Enable/disable scheduled monitor runs (legacy alias for schedulingEnabled) | [optional] 
**SchedulingEnabled** | **Boolean** | Enable/disable scheduled monitor runs. Direct run-now remains available. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateDomainMonitorOptions = Initialize-maislurp-client-powershellUpdateDomainMonitorOptions  -Name null `
 -IntervalSeconds null `
 -Enabled null `
 -SchedulingEnabled null
```

- Convert the resource to JSON
```powershell
$UpdateDomainMonitorOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

