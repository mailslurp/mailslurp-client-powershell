# ExtractAttachmentTextOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **String** | Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction. | [optional] 
**AllowFallback** | **Boolean** | Allow fallback to native extraction when the selected method is unavailable. | [optional] [default to $true]
**MaxBytes** | **Int64** | Maximum bytes to read from attachment for native text extraction. | [optional] [default to 1048576]

## Examples

- Prepare the resource
```powershell
$ExtractAttachmentTextOptions = Initialize-maislurp-client-powershellExtractAttachmentTextOptions  -Method null `
 -AllowFallback null `
 -MaxBytes null
```

- Convert the resource to JSON
```powershell
$ExtractAttachmentTextOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

