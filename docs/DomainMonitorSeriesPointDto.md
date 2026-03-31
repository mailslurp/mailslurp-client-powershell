# DomainMonitorSeriesPointDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BucketStart** | **System.DateTime** |  | 
**RunCount** | **Int32** |  | 
**HealthyCount** | **Int32** |  | 
**DegradedCount** | **Int32** |  | 
**CriticalCount** | **Int32** |  | 
**FailedCount** | **Int32** |  | 
**HealthyRate** | **Double** |  | 
**AverageHealthScore** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorSeriesPointDto = Initialize-maislurp-client-powershellDomainMonitorSeriesPointDto  -BucketStart null `
 -RunCount null `
 -HealthyCount null `
 -DegradedCount null `
 -CriticalCount null `
 -FailedCount null `
 -HealthyRate null `
 -AverageHealthScore null
```

- Convert the resource to JSON
```powershell
$DomainMonitorSeriesPointDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

