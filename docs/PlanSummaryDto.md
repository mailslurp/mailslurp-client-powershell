# PlanSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubscriptionSchedule** | **String** |  | [optional] 
**PhoneCountry** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PlanSummaryDto = Initialize-maislurp-client-powershellPlanSummaryDto  -SubscriptionSchedule null `
 -PhoneCountry null
```

- Convert the resource to JSON
```powershell
$PlanSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

