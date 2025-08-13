# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**VirtualSend** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -ThreadId null `
 -InReplyTo null `
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
 -VirtualSend null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -BodyMD5Hash null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

