# InboxPlacementAnalysisItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | 
**Status** | **String** | Status for a setup or content analysis item | 
**Title** | **String** |  | 
**Message** | **String** |  | 
**Meta** | **System.Collections.Hashtable** |  | 
**ActionLabel** | **String** |  | [optional] 
**ActionUrl** | **String** |  | [optional] 
**DetailTable** | [**InboxPlacementAnalysisDetailTableDto**](InboxPlacementAnalysisDetailTableDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalysisItemDto = Initialize-maislurp-client-powershellInboxPlacementAnalysisItemDto  -Key null `
 -Status null `
 -Title null `
 -Message null `
 -Meta null `
 -ActionLabel null `
 -ActionUrl null `
 -DetailTable null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalysisItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

