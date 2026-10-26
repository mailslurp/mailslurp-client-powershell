# EmailWarmupOverviewDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromDate** | **System.DateTime** |  | 
**ThroughDate** | **System.DateTime** |  | 
**TotalPrograms** | **Int64** |  | 
**ActivePrograms** | **Int64** |  | 
**RampingPrograms** | **Int64** |  | 
**MaintenancePrograms** | **Int64** |  | 
**PausedPrograms** | **Int64** |  | 
**AttentionRequiredPrograms** | **Int64** |  | 
**AcceptedSends** | **Int64** |  | 
**FailedSends** | **Int64** |  | 
**DailyActivity** | [**EmailWarmupDailyActivityDto[]**](EmailWarmupDailyActivityDto) |  | 
**ProgramProgress** | [**EmailWarmupProgramProgressDto[]**](EmailWarmupProgramProgressDto) |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupOverviewDto = Initialize-maislurp-client-powershellEmailWarmupOverviewDto  -FromDate null `
 -ThroughDate null `
 -TotalPrograms null `
 -ActivePrograms null `
 -RampingPrograms null `
 -MaintenancePrograms null `
 -PausedPrograms null `
 -AttentionRequiredPrograms null `
 -AcceptedSends null `
 -FailedSends null `
 -DailyActivity null `
 -ProgramProgress null
```

- Convert the resource to JSON
```powershell
$EmailWarmupOverviewDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

