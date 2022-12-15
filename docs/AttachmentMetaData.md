# AttachmentMetaData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of attachment if given | 
**ContentType** | **String** | Content type of attachment such as &#x60;image/png&#x60; | 
**ContentLength** | **Int64** | Size of attachment in bytes | 
**Id** | **String** | ID of attachment. Can be used to with attachment controller endpoints to download attachment or with sending methods to attach to an email. | 

## Examples

- Prepare the resource
```powershell
$AttachmentMetaData = Initialize-maislurp-client-powershellAttachmentMetaData  -Name null `
 -ContentType null `
 -ContentLength null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AttachmentMetaData | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

