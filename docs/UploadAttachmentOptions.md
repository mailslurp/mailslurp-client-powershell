# UploadAttachmentOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentId** | **String** | Optional contentId for file. | [optional] 
**ContentType** | **String** | Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
**Filename** | **String** | Optional filename to save upload with. Will be the name that is shown in email clients | [optional] 
**Base64Contents** | **String** | Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. For examples of how to do this see https://www.mailslurp.com/guides/base64-file-uploads/ | 

## Examples

- Prepare the resource
```powershell
$UploadAttachmentOptions = Initialize-maislurp-client-powershellUploadAttachmentOptions  -ContentId null `
 -ContentType null `
 -Filename null `
 -Base64Contents null
```

- Convert the resource to JSON
```powershell
$UploadAttachmentOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

