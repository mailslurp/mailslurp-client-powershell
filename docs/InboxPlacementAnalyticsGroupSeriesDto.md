# InboxPlacementAnalyticsGroupSeriesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | 
**Label** | **String** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**Summary** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 
**Points** | [**InboxPlacementAnalyticsSeriesPointDto[]**](InboxPlacementAnalyticsSeriesPointDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalyticsGroupSeriesDto = Initialize-maislurp-client-powershellInboxPlacementAnalyticsGroupSeriesDto  -Key null `
 -Label null `
 -SenderDomain null `
 -FromEmail null `
 -Summary null `
 -Points null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalyticsGroupSeriesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

