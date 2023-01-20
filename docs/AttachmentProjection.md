# AttachmentProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**ContentLength** | **Int64** | Content length of attachment in bytes | [optional] 
**ContentType** | **String** | Content type of attachment. | [optional] 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**AttachmentId** | **String** | Attachment ID | 

## Examples

- Prepare the resource
```powershell
$AttachmentProjection = Initialize-maislurp-client-powershellAttachmentProjection  -Name null `
 -ContentLength null `
 -ContentType image/png `
 -UserId null `
 -CreatedAt null `
 -UpdatedAt null `
 -AttachmentId null
```

- Convert the resource to JSON
```powershell
$AttachmentProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

