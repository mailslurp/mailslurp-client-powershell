# EmailWarmupSendSlotDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ProgramId** | **String** |  | 
**SlotDate** | **System.DateTime** |  | 
**RampDay** | **Int32** |  | 
**Sequence** | **Int32** |  | 
**ScheduledFor** | **System.DateTime** |  | 
**Status** | **String** |  | 
**TargetClass** | **String** |  | 
**ContentHash** | **String** |  | 
**AttemptCount** | **Int32** |  | 
**MaxAttempts** | **Int32** |  | 
**AcceptedAt** | **System.DateTime** |  | [optional] 
**ObservedAt** | **System.DateTime** |  | [optional] 
**OutcomeClass** | **String** |  | [optional] 
**FailureCode** | **String** |  | [optional] 
**ReconciliationRequired** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupSendSlotDto = Initialize-maislurp-client-powershellEmailWarmupSendSlotDto  -Id null `
 -ProgramId null `
 -SlotDate null `
 -RampDay null `
 -Sequence null `
 -ScheduledFor null `
 -Status null `
 -TargetClass null `
 -ContentHash null `
 -AttemptCount null `
 -MaxAttempts null `
 -AcceptedAt null `
 -ObservedAt null `
 -OutcomeClass null `
 -FailureCode null `
 -ReconciliationRequired null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailWarmupSendSlotDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

