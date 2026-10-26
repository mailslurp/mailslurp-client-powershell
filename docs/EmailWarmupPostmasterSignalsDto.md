# EmailWarmupPostmasterSignalsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportDate** | **System.DateTime** |  | 
**DomainReputation** | **String** |  | [optional] 
**UserReportedSpamRatio** | **Double** |  | [optional] 
**SpfSuccessRatio** | **Double** |  | [optional] 
**DkimSuccessRatio** | **Double** |  | [optional] 
**DmarcSuccessRatio** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailWarmupPostmasterSignalsDto = Initialize-maislurp-client-powershellEmailWarmupPostmasterSignalsDto  -ReportDate null `
 -DomainReputation null `
 -UserReportedSpamRatio null `
 -SpfSuccessRatio null `
 -DkimSuccessRatio null `
 -DmarcSuccessRatio null
```

- Convert the resource to JSON
```powershell
$EmailWarmupPostmasterSignalsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

