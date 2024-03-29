# AttachmentEntity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**AttachmentId** | **String** |  | 
**Bucket** | **String** |  | [optional] 
**UserId** | **String** |  | 
**ContentType** | **String** |  | [optional] 
**ContentLength** | **Int64** |  | [optional] 
**ContentId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AttachmentEntity = Initialize-maislurp-client-powershellAttachmentEntity  -Id null `
 -AttachmentId null `
 -Bucket null `
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
$AttachmentEntity | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

