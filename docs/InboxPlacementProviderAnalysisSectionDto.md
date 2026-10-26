# InboxPlacementProviderAnalysisSectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Summary** | **String** |  | [optional] 
**Checks** | [**InboxPlacementProviderAnalysisCheckDto[]**](InboxPlacementProviderAnalysisCheckDto) |  | 
**Details** | **System.Collections.Hashtable** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementProviderAnalysisSectionDto = Initialize-maislurp-client-powershellInboxPlacementProviderAnalysisSectionDto  -Status null `
 -Summary null `
 -Checks null `
 -Details null
```

- Convert the resource to JSON
```powershell
$InboxPlacementProviderAnalysisSectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

