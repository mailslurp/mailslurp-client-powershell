# InboxPlacementProviderAnalysisOptionsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authentication** | **Boolean** |  | 
**Domain** | **Boolean** |  | 
**Content** | **Boolean** |  | 
**Links** | **Boolean** |  | 
**Blacklists** | **Boolean** |  | 
**SanitizedPreview** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementProviderAnalysisOptionsDto = Initialize-maislurp-client-powershellInboxPlacementProviderAnalysisOptionsDto  -Authentication null `
 -Domain null `
 -Content null `
 -Links null `
 -Blacklists null `
 -SanitizedPreview null
```

- Convert the resource to JSON
```powershell
$InboxPlacementProviderAnalysisOptionsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

