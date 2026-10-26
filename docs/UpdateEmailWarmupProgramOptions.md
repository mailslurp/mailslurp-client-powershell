# UpdateEmailWarmupProgramOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpectedVersion** | **Int64** |  | 
**Name** | **String** |  | [optional] 
**GoalDailyVolume** | **Int32** |  | [optional] 
**SchedulePreset** | **String** |  | [optional] 
**RampDurationDays** | **Int32** |  | [optional] 
**MaintenanceEnabled** | **Boolean** |  | [optional] 
**MaintenanceDailyVolume** | **Int32** |  | [optional] 
**SendWindowStart** | **String** |  | [optional] 
**SendWindowEnd** | **String** |  | [optional] 
**TimeZone** | **String** |  | [optional] 
**Content** | [**EmailWarmupContentOptions**](EmailWarmupContentOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateEmailWarmupProgramOptions = Initialize-maislurp-client-powershellUpdateEmailWarmupProgramOptions  -ExpectedVersion null `
 -Name null `
 -GoalDailyVolume null `
 -SchedulePreset null `
 -RampDurationDays null `
 -MaintenanceEnabled null `
 -MaintenanceDailyVolume null `
 -SendWindowStart null `
 -SendWindowEnd null `
 -TimeZone null `
 -Content null
```

- Convert the resource to JSON
```powershell
$UpdateEmailWarmupProgramOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

