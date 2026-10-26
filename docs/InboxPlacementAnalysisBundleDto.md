# InboxPlacementAnalysisBundleDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GeneratedAt** | **System.DateTime** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**SetupItems** | [**InboxPlacementAnalysisItemDto[]**](InboxPlacementAnalysisItemDto) |  | 
**ContentItems** | [**InboxPlacementAnalysisItemDto[]**](InboxPlacementAnalysisItemDto) |  | 
**DomainMonitor** | [**InboxPlacementDomainMonitorSummaryDto**](InboxPlacementDomainMonitorSummaryDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalysisBundleDto = Initialize-maislurp-client-powershellInboxPlacementAnalysisBundleDto  -GeneratedAt null `
 -SenderDomain null `
 -FromEmail null `
 -SetupItems null `
 -ContentItems null `
 -DomainMonitor null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalysisBundleDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

