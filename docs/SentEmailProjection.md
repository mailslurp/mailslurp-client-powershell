# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**VirtualSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Subject null `
 -VarFrom null `
 -Id null `
 -ThreadId null `
 -UserId null `
 -InboxId null `
 -Recipients null `
 -Attachments null `
 -TextExcerpt null `
 -BodyExcerpt null `
 -To null `
 -CreatedAt null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -InReplyTo null `
 -VarSender null `
 -BodyMD5Hash null `
 -VirtualSend null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

