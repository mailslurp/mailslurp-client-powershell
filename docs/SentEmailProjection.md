# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**To** | **String[]** |  | 
**Attachments** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Bcc** | **String[]** |  | 
**Cc** | **String[]** |  | 
**BodyMD5Hash** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -VarFrom null `
 -UserId null `
 -Subject null `
 -InboxId null `
 -To null `
 -Attachments null `
 -CreatedAt null `
 -Bcc null `
 -Cc null `
 -BodyMD5Hash null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

