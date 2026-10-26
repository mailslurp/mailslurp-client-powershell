# DeliverabilityAnalyticsRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Scope** | **String** |  | 
**Status** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**StartAt** | **System.DateTime** |  | 
**CompletedAt** | **System.DateTime** |  | [optional] 
**TotalEntities** | **Int64** |  | 
**MatchedEntities** | **Int64** |  | 
**UnmatchedEntities** | **Int64** |  | 
**CompletionPercentage** | **Double** |  | 
**SuccessThresholdPercent** | **Double** |  | [optional] 
**ThresholdStatus** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityAnalyticsRunDto = Initialize-maislurp-client-powershellDeliverabilityAnalyticsRunDto  -Id null `
 -Name null `
 -Scope null `
 -Status null `
 -CreatedAt null `
 -StartAt null `
 -CompletedAt null `
 -TotalEntities null `
 -MatchedEntities null `
 -UnmatchedEntities null `
 -CompletionPercentage null `
 -SuccessThresholdPercent null `
 -ThresholdStatus null
```

- Convert the resource to JSON
```powershell
$DeliverabilityAnalyticsRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

