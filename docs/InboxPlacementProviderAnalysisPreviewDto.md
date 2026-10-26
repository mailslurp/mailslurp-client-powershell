# InboxPlacementProviderAnalysisPreviewDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Subject** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**TextSnippet** | **String** |  | [optional] 
**HtmlSnippet** | **String** |  | [optional] 
**Details** | **System.Collections.Hashtable** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementProviderAnalysisPreviewDto = Initialize-maislurp-client-powershellInboxPlacementProviderAnalysisPreviewDto  -Status null `
 -Subject null `
 -FromEmail null `
 -TextSnippet null `
 -HtmlSnippet null `
 -Details null
```

- Convert the resource to JSON
```powershell
$InboxPlacementProviderAnalysisPreviewDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

