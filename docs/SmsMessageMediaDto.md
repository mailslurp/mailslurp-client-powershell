# SmsMessageMediaDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**SmsId** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**AttachmentId** | **String** |  | 
**ContentType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SmsMessageMediaDto = Initialize-maislurp-client-powershellSmsMessageMediaDto  -Id null `
 -SmsId null `
 -PhoneNumberId null `
 -AttachmentId null `
 -ContentType null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$SmsMessageMediaDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

