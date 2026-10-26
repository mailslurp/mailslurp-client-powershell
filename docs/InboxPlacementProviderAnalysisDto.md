# InboxPlacementProviderAnalysisDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requested** | [**InboxPlacementProviderAnalysisOptionsDto**](InboxPlacementProviderAnalysisOptionsDto) |  | 
**Authentication** | [**InboxPlacementProviderAnalysisSectionDto**](InboxPlacementProviderAnalysisSectionDto) |  | 
**Domain** | [**InboxPlacementProviderAnalysisSectionDto**](InboxPlacementProviderAnalysisSectionDto) |  | 
**Content** | [**InboxPlacementProviderAnalysisSectionDto**](InboxPlacementProviderAnalysisSectionDto) |  | 
**Links** | [**InboxPlacementProviderAnalysisSectionDto**](InboxPlacementProviderAnalysisSectionDto) |  | 
**Blacklists** | [**InboxPlacementProviderAnalysisSectionDto**](InboxPlacementProviderAnalysisSectionDto) |  | 
**Preview** | [**InboxPlacementProviderAnalysisPreviewDto**](InboxPlacementProviderAnalysisPreviewDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementProviderAnalysisDto = Initialize-maislurp-client-powershellInboxPlacementProviderAnalysisDto  -Requested null `
 -Authentication null `
 -Domain null `
 -Content null `
 -Links null `
 -Blacklists null `
 -Preview null
```

- Convert the resource to JSON
```powershell
$InboxPlacementProviderAnalysisDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

