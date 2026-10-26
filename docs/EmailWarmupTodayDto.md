# EmailWarmupTodayDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **System.DateTime** |  | 
**PlannedSends** | **Int64** |  | 
**AcceptedSends** | **Int64** |  | 
**ObservedSends** | **Int64** |  | 
**FailedSends** | **Int64** |  | 
**NextSendAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailWarmupTodayDto = Initialize-maislurp-client-powershellEmailWarmupTodayDto  -Date null `
 -PlannedSends null `
 -AcceptedSends null `
 -ObservedSends null `
 -FailedSends null `
 -NextSendAt null
```

- Convert the resource to JSON
```powershell
$EmailWarmupTodayDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

