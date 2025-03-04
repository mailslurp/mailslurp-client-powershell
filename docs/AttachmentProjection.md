# AttachmentProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** | Inbox ID | [optional] 
**ContentId** | **String** | Content ID of attachment. | [optional] 
**AttachmentId** | **String** | Attachment ID | 
**Name** | **String** |  | [optional] 
**Id** | **String** | ID | 
**ContentLength** | **Int64** | Content length of attachment in bytes | [optional] 
**ContentType** | **String** | Content type of attachment. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentProjection = Initialize-maislurp-client-powershellAttachmentProjection  -CreatedAt null `
 -UpdatedAt null `
 -UserId null `
 -InboxId null `
 -ContentId null `
 -AttachmentId null `
 -Name null `
 -Id null `
 -ContentLength null `
 -ContentType image/png
```

- Convert the resource to JSON
```powershell
$AttachmentProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

