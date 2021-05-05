# DownloadAttachmentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Base64FileContents** | **String** | Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as &#x60;text/html&#x60; you can read the contents directly by converting it to string using &#x60;utf-8&#x60; encoding. | [optional] 
**ContentType** | **String** | Content type of attachment. Examples are &#x60;image/png&#x60;, &#x60;application/msword&#x60;, &#x60;text/csv&#x60; etc. | [optional] 
**SizeBytes** | **Int64** | Size in bytes of attachment content | [optional] 

## Examples

- Prepare the resource
```powershell
$DownloadAttachmentDto = Initialize-maislurp-client-powershellDownloadAttachmentDto  -Base64FileContents null `
 -ContentType null `
 -SizeBytes null
```

- Convert the resource to JSON
```powershell
$DownloadAttachmentDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

