# AttachmentProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**ContentId** | **String** | Content ID of attachment. | [optional] 
**AttachmentId** | **String** | Attachment ID | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Name** | **String** |  | [optional] 
**ContentLength** | **Int64** | Content length of attachment in bytes | [optional] 
**ContentType** | **String** | Content type of attachment. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentProjection = Initialize-maislurp-client-powershellAttachmentProjection  -UserId null `
 -ContentId null `
 -AttachmentId null `
 -CreatedAt null `
 -UpdatedAt null `
 -Name null `
 -ContentLength null `
 -ContentType image/png
```

- Convert the resource to JSON
```powershell
$AttachmentProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

