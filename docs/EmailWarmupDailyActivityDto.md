# EmailWarmupDailyActivityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **System.DateTime** |  | 
**ScheduledSends** | **Int64** |  | 
**AcceptedSends** | **Int64** |  | 
**ObservedSends** | **Int64** |  | 
**FailedSends** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupDailyActivityDto = Initialize-maislurp-client-powershellEmailWarmupDailyActivityDto  -Date null `
 -ScheduledSends null `
 -AcceptedSends null `
 -ObservedSends null `
 -FailedSends null
```

- Convert the resource to JSON
```powershell
$EmailWarmupDailyActivityDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

