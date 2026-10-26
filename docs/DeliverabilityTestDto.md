# DeliverabilityTestDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Scope** | **String** |  | 
**Selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**SelectedEntityCount** | **Int64** |  | 
**Expectations** | [**DeliverabilityExpectation[]**](DeliverabilityExpectation) |  | 
**Status** | **String** |  | 
**StartAt** | **System.DateTime** |  | 
**StartedAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**MaxDurationSeconds** | **Int64** |  | [optional] 
**SuccessThresholdPercent** | **Double** |  | [optional] 
**ThresholdStatus** | **String** |  | 
**ThresholdMet** | **Boolean** |  | [optional] 
**LastEvaluatedAt** | **System.DateTime** |  | [optional] 
**TotalEntities** | **Int64** |  | 
**MatchedEntities** | **Int64** |  | 
**UnmatchedEntities** | **Int64** |  | 
**CompletionPercentage** | **Double** |  | 
**TimedOut** | **Boolean** |  | 
**FailureReason** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityTestDto = Initialize-maislurp-client-powershellDeliverabilityTestDto  -Id null `
 -Name null `
 -Description null `
 -Scope null `
 -Selector null `
 -SelectedEntityCount null `
 -Expectations null `
 -Status null `
 -StartAt null `
 -StartedAt null `
 -CompletedAt null `
 -MaxDurationSeconds null `
 -SuccessThresholdPercent null `
 -ThresholdStatus null `
 -ThresholdMet null `
 -LastEvaluatedAt null `
 -TotalEntities null `
 -MatchedEntities null `
 -UnmatchedEntities null `
 -CompletionPercentage null `
 -TimedOut null `
 -FailureReason null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DeliverabilityTestDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

