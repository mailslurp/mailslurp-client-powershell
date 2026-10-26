# ExportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OutputFormat** | **String** |  | 
**ExcludePreviouslyExported** | **Boolean** |  | [optional] 
**CreatedEarliestTime** | **System.DateTime** |  | [optional] 
**CreatedOldestTime** | **System.DateTime** |  | [optional] 
**VarFilter** | **String** |  | [optional] 
**ListSeparatorToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportOptions = Initialize-maislurp-client-powershellExportOptions  -OutputFormat null `
 -ExcludePreviouslyExported null `
 -CreatedEarliestTime null `
 -CreatedOldestTime null `
 -VarFilter null `
 -ListSeparatorToken null
```

- Convert the resource to JSON
```powershell
$ExportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

