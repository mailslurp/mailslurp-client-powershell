# AttachmentEntityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier for this attachment. | 
**AttachmentId** | **String** | The identifier of the attachment file | 
**UserId** | **String** | The user identifier associated with this attachment. | 
**ContentType** | **String** | The content type of the attachment. | [optional] 
**ContentLength** | **Int64** | The content length of the attachment in bytes. | [optional] 
**ContentId** | **String** | The content identifier, which is a unique ID for the content part of the email. | [optional] 
**Name** | **String** | The name of the attachment file. | [optional] 
**InboxId** | **String** | The inbox identifier associated with this attachment. | [optional] 
**CreatedAt** | **System.DateTime** | The timestamp when this attachment was created. | 
**UpdatedAt** | **System.DateTime** | The timestamp when this attachment was last updated. | 

## Examples

- Prepare the resource
```powershell
$AttachmentEntityDto = Initialize-maislurp-client-powershellAttachmentEntityDto  -Id null `
 -AttachmentId null `
 -UserId null `
 -ContentType null `
 -ContentLength null `
 -ContentId null `
 -Name null `
 -InboxId null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AttachmentEntityDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

