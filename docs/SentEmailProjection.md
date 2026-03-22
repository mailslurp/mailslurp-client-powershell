# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**VirtualSend** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -ThreadId null `
 -VarFrom null `
 -Subject null `
 -VarSender null `
 -Recipients null `
 -UserId null `
 -InboxId null `
 -Attachments null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -InReplyTo null `
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

