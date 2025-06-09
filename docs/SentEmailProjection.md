# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**InboxId** | **String** |  | 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**MessageId** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**VirtualSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Subject null `
 -Id null `
 -ThreadId null `
 -InReplyTo null `
 -VarFrom null `
 -VarSender null `
 -Recipients null `
 -Attachments null `
 -InboxId null `
 -UserId null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -BodyMD5Hash null `
 -VirtualSend null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

