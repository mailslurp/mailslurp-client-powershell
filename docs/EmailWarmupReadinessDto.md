# EmailWarmupReadinessDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Summary** | **String** |  | 
**ReadyForDailyVolume** | **Int32** |  | 
**GoalDailyVolume** | **Int32** |  | 
**EstimatedReadyAt** | **System.DateTime** |  | [optional] 
**Today** | [**EmailWarmupTodayDto**](EmailWarmupTodayDto) |  | 
**Pacing** | [**EmailWarmupPacingDto**](EmailWarmupPacingDto) |  | 
**PlacementDeltas** | [**EmailWarmupPlacementDeltaDto[]**](EmailWarmupPlacementDeltaDto) |  | 
**DomainHealth** | [**EmailWarmupDomainHealthDto**](EmailWarmupDomainHealthDto) |  | 
**PostmasterSignals** | [**EmailWarmupPostmasterSignalsDto**](EmailWarmupPostmasterSignalsDto) |  | [optional] 
**Recommendations** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupReadinessDto = Initialize-maislurp-client-powershellEmailWarmupReadinessDto  -Status null `
 -Summary null `
 -ReadyForDailyVolume null `
 -GoalDailyVolume null `
 -EstimatedReadyAt null `
 -Today null `
 -Pacing null `
 -PlacementDeltas null `
 -DomainHealth null `
 -PostmasterSignals null `
 -Recommendations null
```

- Convert the resource to JSON
```powershell
$EmailWarmupReadinessDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

