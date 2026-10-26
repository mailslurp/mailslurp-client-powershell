# EmailWarmupProgramDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConnectionId** | **String** |  | 
**SenderEmail** | **String** |  | 
**Name** | **String** |  | 
**CustomerIntent** | **String** |  | 
**ExecutionPolicy** | **String** |  | 
**ProgramMode** | **String** |  | 
**Status** | **String** |  | 
**Blockers** | **String[]** |  | 
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
**ResolvedCoverage** | **String** |  | 
**BaselineTestId** | **String** |  | [optional] 
**BaselineSource** | **String** |  | 
**ContentSource** | **String** |  | 
**Content** | [**EmailWarmupContentOptions**](EmailWarmupContentOptions) |  | 
**ContentHash** | **String** |  | 
**SenderOwnershipAttestedAt** | **System.DateTime** |  | 
**PermissionBasedSendingAttestedAt** | **System.DateTime** |  | 
**AttestationPolicyVersion** | **String** |  | 
**PolicyVersion** | **String** |  | 
**ContentPolicyVersion** | **String** |  | 
**RecipientPolicyVersion** | **String** |  | 
**NextActionAt** | **System.DateTime** |  | [optional] 
**StartedAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**CompletionCode** | **String** |  | [optional] 
**Version** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupProgramDto = Initialize-maislurp-client-powershellEmailWarmupProgramDto  -Id null `
 -ConnectionId null `
 -SenderEmail null `
 -Name null `
 -CustomerIntent null `
 -ExecutionPolicy null `
 -ProgramMode null `
 -Status null `
 -Blockers null `
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
 -ResolvedCoverage null `
 -BaselineTestId null `
 -BaselineSource null `
 -ContentSource null `
 -Content null `
 -ContentHash null `
 -SenderOwnershipAttestedAt null `
 -PermissionBasedSendingAttestedAt null `
 -AttestationPolicyVersion null `
 -PolicyVersion null `
 -ContentPolicyVersion null `
 -RecipientPolicyVersion null `
 -NextActionAt null `
 -StartedAt null `
 -CompletedAt null `
 -CompletionCode null `
 -Version null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailWarmupProgramDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

