# InboxPlacementFolderBreakdownDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Folder** | **String** |  | 
**Count** | **Int64** |  | 
**Percentage** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementFolderBreakdownDto = Initialize-maislurp-client-powershellInboxPlacementFolderBreakdownDto  -Folder null `
 -Count null `
 -Percentage null
```

- Convert the resource to JSON
```powershell
$InboxPlacementFolderBreakdownDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

