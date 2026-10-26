# InboxPlacementAnalyticsBreakdownDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**Summary** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 
**Folders** | [**InboxPlacementFolderBreakdownDto[]**](InboxPlacementFolderBreakdownDto) |  | 
**Providers** | [**InboxPlacementProviderBreakdownDto[]**](InboxPlacementProviderBreakdownDto) |  | 
**SenderDomains** | [**InboxPlacementSenderBreakdownDto[]**](InboxPlacementSenderBreakdownDto) |  | 
**FromEmails** | [**InboxPlacementSenderBreakdownDto[]**](InboxPlacementSenderBreakdownDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalyticsBreakdownDto = Initialize-maislurp-client-powershellInboxPlacementAnalyticsBreakdownDto  -Since null `
 -Before null `
 -SenderDomain null `
 -FromEmail null `
 -Summary null `
 -Folders null `
 -Providers null `
 -SenderDomains null `
 -FromEmails null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalyticsBreakdownDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

