# ExportTransformerOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AiTransformId** | **String** |  | [optional] 
**AiMappingId** | **String** |  | [optional] 
**FlattenArrays** | **Boolean** |  | 
**Since** | **System.DateTime** |  | [optional] 
**Before** | **System.DateTime** |  | [optional] 
**Format** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**SmsId** | **String** |  | [optional] 
**AttachmentId** | **String** |  | [optional] 
**IncludeMetaData** | **Boolean** |  | 
**Delimiter** | **String** |  | [optional] 
**ArraySeparator** | **String** |  | [optional] 
**IncludeMetaDataColumns** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportTransformerOptions = Initialize-maislurp-client-powershellExportTransformerOptions  -AiTransformId null `
 -AiMappingId null `
 -FlattenArrays null `
 -Since null `
 -Before null `
 -Format null `
 -InboxId null `
 -PhoneId null `
 -EmailId null `
 -SmsId null `
 -AttachmentId null `
 -IncludeMetaData null `
 -Delimiter null `
 -ArraySeparator null `
 -IncludeMetaDataColumns null
```

- Convert the resource to JSON
```powershell
$ExportTransformerOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

