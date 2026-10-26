# InboxPlacementSenderBreakdownDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | 
**Label** | **String** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**RunCount** | **Int64** |  | 
**LastRunAt** | **System.DateTime** |  | [optional] 
**Metrics** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementSenderBreakdownDto = Initialize-maislurp-client-powershellInboxPlacementSenderBreakdownDto  -Key null `
 -Label null `
 -SenderDomain null `
 -FromEmail null `
 -RunCount null `
 -LastRunAt null `
 -Metrics null
```

- Convert the resource to JSON
```powershell
$InboxPlacementSenderBreakdownDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

