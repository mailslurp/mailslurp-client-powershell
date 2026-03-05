# DomainMonitorInsightsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MonitorId** | **String** |  | 
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**TotalRuns** | **Int32** |  | 
**HealthyRuns** | **Int32** |  | 
**DegradedRuns** | **Int32** |  | 
**CriticalRuns** | **Int32** |  | 
**FailedRuns** | **Int32** |  | 
**SuccessRate** | **Double** |  | 
**AverageHealthScore** | **Double** |  | 
**CurrentHealthyStreak** | **Int32** |  | 
**BestHealthyStreak** | **Int32** |  | 
**GoodPerformanceSignals** | **String[]** |  | 
**AttentionSignals** | **String[]** |  | 
**TopFindings** | **String[]** |  | 
**LatestRun** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainMonitorInsightsDto = Initialize-maislurp-client-powershellDomainMonitorInsightsDto  -MonitorId null `
 -Since null `
 -Before null `
 -TotalRuns null `
 -HealthyRuns null `
 -DegradedRuns null `
 -CriticalRuns null `
 -FailedRuns null `
 -SuccessRate null `
 -AverageHealthScore null `
 -CurrentHealthyStreak null `
 -BestHealthyStreak null `
 -GoodPerformanceSignals null `
 -AttentionSignals null `
 -TopFindings null `
 -LatestRun null
```

- Convert the resource to JSON
```powershell
$DomainMonitorInsightsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

