# DeliverabilitySimulationJobDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**TestId** | **String** |  | 
**Scope** | **String** |  | 
**Status** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**StartedAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**TotalTargets** | **Int64** |  | 
**TotalPlannedSends** | **Int64** |  | 
**NextSendIndex** | **Int64** |  | 
**SentCount** | **Int64** |  | 
**SuccessCount** | **Int64** |  | 
**FailureCount** | **Int64** |  | 
**ProgressPercent** | **Double** |  | 
**ActiveTargetLabel** | **String** |  | [optional] 
**EstimatedRemainingMs** | **Int64** |  | [optional] 
**ConfigSnapshot** | [**DeliverabilitySimulationJobConfigDto**](DeliverabilitySimulationJobConfigDto) |  | 
**ErrorSummary** | [**DeliverabilitySimulationJobErrorSummaryDto**](DeliverabilitySimulationJobErrorSummaryDto) |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationJobDto = Initialize-maislurp-client-powershellDeliverabilitySimulationJobDto  -Id null `
 -TestId null `
 -Scope null `
 -Status null `
 -CreatedAt null `
 -UpdatedAt null `
 -StartedAt null `
 -CompletedAt null `
 -TotalTargets null `
 -TotalPlannedSends null `
 -NextSendIndex null `
 -SentCount null `
 -SuccessCount null `
 -FailureCount null `
 -ProgressPercent null `
 -ActiveTargetLabel null `
 -EstimatedRemainingMs null `
 -ConfigSnapshot null `
 -ErrorSummary null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationJobDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

