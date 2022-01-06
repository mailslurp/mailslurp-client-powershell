# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -VarFrom null `
 -UserId null `
 -Subject null `
 -CreatedAt null `
 -InboxId null `
 -To null `
 -Attachments null `
 -Bcc null `
 -Cc null `
 -BodyMD5Hash null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

