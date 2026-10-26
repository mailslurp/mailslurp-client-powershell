# EmailDraftDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the draft | 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID the draft will send from | 
**To** | **String[]** | Draft recipients | [optional] 
**Cc** | **String[]** | Draft CC recipients | [optional] 
**Bcc** | **String[]** | Draft BCC recipients | [optional] 
**VarFrom** | **String** | Draft sender | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Subject** | **String** | Draft subject | [optional] 
**BodyExcerpt** | **String** | Draft body preview | [optional] 
**TextExcerpt** | **String** | Draft text preview | [optional] 
**Attachments** | **String[]** | Attachment IDs selected for the draft | [optional] 
**SendOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 
**CreatedAt** | **System.DateTime** | Draft creation time | 
**UpdatedAt** | **System.DateTime** | Draft last update time | 

## Examples

- Prepare the resource
```powershell
$EmailDraftDto = Initialize-maislurp-client-powershellEmailDraftDto  -Id null `
 -UserId null `
 -InboxId null `
 -To null `
 -Cc null `
 -Bcc null `
 -VarFrom null `
 -VarSender null `
 -Recipients null `
 -Subject null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -Attachments null `
 -SendOptions null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailDraftDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

