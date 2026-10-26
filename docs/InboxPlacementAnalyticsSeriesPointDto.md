# InboxPlacementAnalyticsSeriesPointDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BucketStart** | **System.DateTime** |  | 
**BucketEnd** | **System.DateTime** |  | 
**Metrics** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalyticsSeriesPointDto = Initialize-maislurp-client-powershellInboxPlacementAnalyticsSeriesPointDto  -BucketStart null `
 -BucketEnd null `
 -Metrics null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalyticsSeriesPointDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

