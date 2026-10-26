# CreateEmailWarmupProgramOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**ConnectionId** | **String** |  | 
**CustomerIntent** | **String** |  | 
**CurrentDailyVolume** | **Int32** |  | 
**GoalDailyVolume** | **Int32** |  | 
**SchedulePreset** | **String** |  | 
**RampDurationDays** | **Int32** |  | 
**MaintenanceEnabled** | **Boolean** |  | 
**MaintenanceDailyVolume** | **Int32** |  | 
**SendWindowStart** | **String** |  | 
**SendWindowEnd** | **String** |  | 
**TimeZone** | **String** |  | 
**RequestedCoverage** | **String** |  | 
**BaselineTestId** | **String** |  | [optional] 
**Content** | [**EmailWarmupContentOptions**](EmailWarmupContentOptions) |  | 
**SenderOwnershipAttested** | **Boolean** |  | 
**PermissionBasedSendingAttested** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$CreateEmailWarmupProgramOptions = Initialize-maislurp-client-powershellCreateEmailWarmupProgramOptions  -Name null `
 -ConnectionId null `
 -CustomerIntent null `
 -CurrentDailyVolume null `
 -GoalDailyVolume null `
 -SchedulePreset null `
 -RampDurationDays null `
 -MaintenanceEnabled null `
 -MaintenanceDailyVolume null `
 -SendWindowStart null `
 -SendWindowEnd null `
 -TimeZone null `
 -RequestedCoverage null `
 -BaselineTestId null `
 -Content null `
 -SenderOwnershipAttested null `
 -PermissionBasedSendingAttested null
```

- Convert the resource to JSON
```powershell
$CreateEmailWarmupProgramOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

