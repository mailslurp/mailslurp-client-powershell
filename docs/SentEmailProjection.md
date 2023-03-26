# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Attachments** | **String[]** |  | 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**Cc** | **String[]** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**VirtualSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -UserId null `
 -Attachments null `
 -InboxId null `
 -CreatedAt null `
 -To null `
 -Bcc null `
 -Cc null `
 -BodyMD5Hash null `
 -VirtualSend null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

