# EmailPreviewHtmlDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** | Email subject when available | [optional] 
**Html** | **String** | Server-normalized preview HTML with active content removed | 
**LinkBehavior** | **String** | Controls navigation for links in hardened email HTML previews. Original email HTML endpoints are unaffected. | 

## Examples

- Prepare the resource
```powershell
$EmailPreviewHtmlDto = Initialize-maislurp-client-powershellEmailPreviewHtmlDto  -Subject null `
 -Html null `
 -LinkBehavior null
```

- Convert the resource to JSON
```powershell
$EmailPreviewHtmlDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

