# PublicEmailPreviewContentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Html** | **String** |  | 
**Subject** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicEmailPreviewContentDto = Initialize-maislurp-client-powershellPublicEmailPreviewContentDto  -Html null `
 -Subject null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$PublicEmailPreviewContentDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

