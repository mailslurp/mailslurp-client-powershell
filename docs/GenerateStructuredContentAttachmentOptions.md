# GenerateStructuredContentAttachmentOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttachmentId** | **String** | Attachment ID to read and pass to AI | 
**Instructions** | **String** | Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints. | [optional] 
**OutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**TransformId** | **String** | ID of transformer to apply | [optional] 
**EmailId** | **String** | Optional email ID for more context | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateStructuredContentAttachmentOptions = Initialize-maislurp-client-powershellGenerateStructuredContentAttachmentOptions  -AttachmentId null `
 -Instructions null `
 -OutputSchema null `
 -TransformId null `
 -EmailId null
```

- Convert the resource to JSON
```powershell
$GenerateStructuredContentAttachmentOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

