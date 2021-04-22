# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachments** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**Cc** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Attachments null `
 -Bcc null `
 -BodyMD5Hash null `
 -Cc null `
 -CreatedAt null `
 -VarFrom null `
 -Id null `
 -InboxId null `
 -Subject null `
 -To null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

