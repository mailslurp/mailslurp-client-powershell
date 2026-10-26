# ExportTransformerResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** |  | 
**Status** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExportTransformerResponse = Initialize-maislurp-client-powershellExportTransformerResponse  -JobId null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ExportTransformerResponse | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

