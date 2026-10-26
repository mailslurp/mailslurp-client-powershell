# AutomatedInboxPlacementExecutionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ScheduleId** | **String** |  | 
**ConnectionId** | **String** |  | 
**ScheduledFor** | **System.DateTime** |  | 
**TriggerSource** | **String** |  | 
**Status** | **String** |  | 
**InboxPlacementRunId** | **String** |  | [optional] 
**TargetCount** | **Int32** |  | 
**SentCount** | **Int32** |  | 
**AttemptCount** | **Int32** |  | 
**FailureCode** | **String** |  | [optional] 
**FailureMessage** | **String** |  | [optional] 
**StartedAt** | **System.DateTime** |  | [optional] 
**FinishedAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AutomatedInboxPlacementExecutionDto = Initialize-maislurp-client-powershellAutomatedInboxPlacementExecutionDto  -Id null `
 -ScheduleId null `
 -ConnectionId null `
 -ScheduledFor null `
 -TriggerSource null `
 -Status null `
 -InboxPlacementRunId null `
 -TargetCount null `
 -SentCount null `
 -AttemptCount null `
 -FailureCode null `
 -FailureMessage null `
 -StartedAt null `
 -FinishedAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AutomatedInboxPlacementExecutionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

