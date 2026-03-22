# DeliverabilityAnalyticsSeriesPointDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BucketStart** | **System.DateTime** |  | 
**BucketEnd** | **System.DateTime** |  | 
**Metrics** | [**DeliverabilityAnalyticsSummaryDto**](DeliverabilityAnalyticsSummaryDto) |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityAnalyticsSeriesPointDto = Initialize-maislurp-client-powershellDeliverabilityAnalyticsSeriesPointDto  -BucketStart null `
 -BucketEnd null `
 -Metrics null
```

- Convert the resource to JSON
```powershell
$DeliverabilityAnalyticsSeriesPointDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

