# DownloadAttachmentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Base64FileContents** | **String** | Base64 encoded string of attachment bytes. Decode the base64 string to get the raw file bytes | [optional] 
**ContentType** | **String** | Content type of attachment | [optional] 
**SizeBytes** | **Int64** | Size in bytes of attachment | [optional] 

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

