# InboxPlacementRemoteResultsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Test** | [**InboxPlacementRemoteTestSummaryDto**](InboxPlacementRemoteTestSummaryDto) |  | 
**Deliverability** | [**InboxPlacementDeliverabilitySummaryDto**](InboxPlacementDeliverabilitySummaryDto) |  | 
**SetupAnalysis** | **System.Collections.Hashtable** |  | 
**ContentAnalysis** | **System.Collections.Hashtable** |  | 
**Analysis** | [**InboxPlacementAnalysisBundleDto**](InboxPlacementAnalysisBundleDto) |  | [optional] 
**ProviderAnalysis** | [**InboxPlacementProviderAnalysisDto**](InboxPlacementProviderAnalysisDto) |  | [optional] 
**Targets** | [**InboxPlacementTargetResultDto[]**](InboxPlacementTargetResultDto) |  | 
**Scores** | [**System.Collections.Hashtable[]**](Map) |  | 
**Share** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxPlacementRemoteResultsDto = Initialize-maislurp-client-powershellInboxPlacementRemoteResultsDto  -Test null `
 -Deliverability null `
 -SetupAnalysis null `
 -ContentAnalysis null `
 -Analysis null `
 -ProviderAnalysis null `
 -Targets null `
 -Scores null `
 -Share null
```

- Convert the resource to JSON
```powershell
$InboxPlacementRemoteResultsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

