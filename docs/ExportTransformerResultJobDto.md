# ExportTransformerResultJobDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Status** | **String** |  | 
**Format** | **String** |  | 
**FileName** | **String** |  | [optional] 
**DownloadUrl** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ExportTransformerResultJobDto = Initialize-maislurp-client-powershellExportTransformerResultJobDto  -Id null `
 -Status null `
 -Format null `
 -FileName null `
 -DownloadUrl null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ExportTransformerResultJobDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

