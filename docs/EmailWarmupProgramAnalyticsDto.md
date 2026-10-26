# EmailWarmupProgramAnalyticsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProgramId** | **String** |  | 
**FromDate** | **System.DateTime** |  | 
**ThroughDate** | **System.DateTime** |  | 
**Progress** | [**EmailWarmupProgramProgressDto**](EmailWarmupProgramProgressDto) |  | 
**TotalScheduledSends** | **Int64** |  | 
**TotalAcceptedSends** | **Int64** |  | 
**TotalObservedSends** | **Int64** |  | 
**TotalFailedSends** | **Int64** |  | 
**AttentionRequiredSends** | **Int64** |  | 
**DailyActivity** | [**EmailWarmupDailyActivityDto[]**](EmailWarmupDailyActivityDto) |  | 
**PlacementChecks** | [**EmailWarmupPlacementCheckDto[]**](EmailWarmupPlacementCheckDto) |  | 
**Readiness** | [**EmailWarmupReadinessDto**](EmailWarmupReadinessDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailWarmupProgramAnalyticsDto = Initialize-maislurp-client-powershellEmailWarmupProgramAnalyticsDto  -ProgramId null `
 -FromDate null `
 -ThroughDate null `
 -Progress null `
 -TotalScheduledSends null `
 -TotalAcceptedSends null `
 -TotalObservedSends null `
 -TotalFailedSends null `
 -AttentionRequiredSends null `
 -DailyActivity null `
 -PlacementChecks null `
 -Readiness null
```

- Convert the resource to JSON
```powershell
$EmailWarmupProgramAnalyticsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

