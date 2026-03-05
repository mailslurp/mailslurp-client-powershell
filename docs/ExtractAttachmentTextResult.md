# ExtractAttachmentTextResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Present** | **Boolean** | True if extracted text is present | 
**Text** | **String** | Extracted text when present | [optional] 
**MethodUsed** | **String** | Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction. | [optional] 
**ContentType** | **String** | Detected attachment content type | [optional] 
**Warnings** | **String[]** | Warnings or fallback notes | 

## Examples

- Prepare the resource
```powershell
$ExtractAttachmentTextResult = Initialize-maislurp-client-powershellExtractAttachmentTextResult  -Present null `
 -Text null `
 -MethodUsed null `
 -ContentType null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$ExtractAttachmentTextResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

