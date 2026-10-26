# InboxPlacementAnalysisDetailTableDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** |  | 
**Columns** | **String[]** |  | 
**Rows** | [**System.Collections.Hashtable[]**](Map) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalysisDetailTableDto = Initialize-maislurp-client-powershellInboxPlacementAnalysisDetailTableDto  -Title null `
 -Columns null `
 -Rows null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalysisDetailTableDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

