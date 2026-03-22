# CreateDomainMonitorOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Name** | **String** | Optional display name | [optional] 
**IntervalSeconds** | **Int64** | Check interval in seconds | [optional] 
**Enabled** | **Boolean** | Whether scheduled monitor runs are enabled (legacy alias for schedulingEnabled) | [optional] 
**SchedulingEnabled** | **Boolean** | Whether scheduled monitor runs are enabled. Direct run-now is always permitted. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDomainMonitorOptions = Initialize-maislurp-client-powershellCreateDomainMonitorOptions  -Domain example.com `
 -Name Primary Domain `
 -IntervalSeconds 300 `
 -Enabled null `
 -SchedulingEnabled null
```

- Convert the resource to JSON
```powershell
$CreateDomainMonitorOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

