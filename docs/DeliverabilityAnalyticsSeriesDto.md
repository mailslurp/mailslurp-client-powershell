# DeliverabilityAnalyticsSeriesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**Scope** | **String** |  | [optional] 
**Bucket** | **String** |  | 
**Summary** | [**DeliverabilityAnalyticsSummaryDto**](DeliverabilityAnalyticsSummaryDto) |  | 
**Runs** | [**DeliverabilityAnalyticsRunDto[]**](DeliverabilityAnalyticsRunDto) |  | 
**Points** | [**DeliverabilityAnalyticsSeriesPointDto[]**](DeliverabilityAnalyticsSeriesPointDto) |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityAnalyticsSeriesDto = Initialize-maislurp-client-powershellDeliverabilityAnalyticsSeriesDto  -Since null `
 -Before null `
 -Scope null `
 -Bucket null `
 -Summary null `
 -Runs null `
 -Points null
```

- Convert the resource to JSON
```powershell
$DeliverabilityAnalyticsSeriesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

