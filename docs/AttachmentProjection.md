# AttachmentProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**ContentLength** | **Int64** | Content length of attachment in bytes | [optional] 
**UserId** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**AttachmentId** | **String** | Attachment ID | 
**CreatedAt** | **System.DateTime** |  | 
**ContentType** | **String** | Content type of attachment. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentProjection = Initialize-maislurp-client-powershellAttachmentProjection  -Name null `
 -ContentLength null `
 -UserId null `
 -UpdatedAt null `
 -AttachmentId null `
 -CreatedAt null `
 -ContentType image/png
```

- Convert the resource to JSON
```powershell
$AttachmentProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

