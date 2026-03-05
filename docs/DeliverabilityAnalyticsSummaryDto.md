# DeliverabilityAnalyticsSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalRuns** | **Int64** |  | 
**CompleteRuns** | **Int64** |  | 
**FailedRuns** | **Int64** |  | 
**StoppedRuns** | **Int64** |  | 
**RunningRuns** | **Int64** |  | 
**ScheduledRuns** | **Int64** |  | 
**PausedRuns** | **Int64** |  | 
**CreatedRuns** | **Int64** |  | 
**ThresholdConfiguredRuns** | **Int64** |  | 
**ThresholdMetRuns** | **Int64** |  | 
**AverageCompletionPercentage** | **Double** |  | 
**AverageMatchedEntities** | **Double** |  | 
**AverageUnmatchedEntities** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityAnalyticsSummaryDto = Initialize-maislurp-client-powershellDeliverabilityAnalyticsSummaryDto  -TotalRuns null `
 -CompleteRuns null `
 -FailedRuns null `
 -StoppedRuns null `
 -RunningRuns null `
 -ScheduledRuns null `
 -PausedRuns null `
 -CreatedRuns null `
 -ThresholdConfiguredRuns null `
 -ThresholdMetRuns null `
 -AverageCompletionPercentage null `
 -AverageMatchedEntities null `
 -AverageUnmatchedEntities null
```

- Convert the resource to JSON
```powershell
$DeliverabilityAnalyticsSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

