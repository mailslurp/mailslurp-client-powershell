# AttachmentMetaData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentLength** | **Int64** | Size of attachment in bytes | [optional] 
**ContentType** | **String** | Content type of attachment | [optional] 
**Id** | **String** | ID of attachment | [optional] 
**Name** | **String** | Name of attachment | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentMetaData = Initialize-maislurp-client-powershellAttachmentMetaData  -ContentLength null `
 -ContentType null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$AttachmentMetaData | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

