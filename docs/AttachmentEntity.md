# AttachmentEntity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttachmentId** | **String** |  | 
**ContentLength** | **Int64** |  | [optional] 
**ContentType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AttachmentEntity = Initialize-maislurp-client-powershellAttachmentEntity  -AttachmentId null `
 -ContentLength null `
 -ContentType null `
 -CreatedAt null `
 -Id null `
 -Name null `
 -UpdatedAt null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$AttachmentEntity | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

