# InboxPlacementAnalyticsSeriesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**Bucket** | **String** |  | 
**GroupBy** | **String** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**Summary** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 
**Runs** | [**InboxPlacementAnalyticsRunDto[]**](InboxPlacementAnalyticsRunDto) |  | 
**Points** | [**InboxPlacementAnalyticsSeriesPointDto[]**](InboxPlacementAnalyticsSeriesPointDto) |  | 
**Groups** | [**InboxPlacementAnalyticsGroupSeriesDto[]**](InboxPlacementAnalyticsGroupSeriesDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalyticsSeriesDto = Initialize-maislurp-client-powershellInboxPlacementAnalyticsSeriesDto  -Since null `
 -Before null `
 -Bucket null `
 -GroupBy null `
 -SenderDomain null `
 -FromEmail null `
 -Summary null `
 -Runs null `
 -Points null `
 -Groups null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalyticsSeriesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

