# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**MessageId** | **String** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**VirtualSend** | **Boolean** |  | 
**ThreadId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -VarFrom null `
 -VarSender null `
 -Recipients null `
 -Subject null `
 -UserId null `
 -Attachments null `
 -InboxId null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -InReplyTo null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -BodyMD5Hash null `
 -VirtualSend null `
 -ThreadId null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

