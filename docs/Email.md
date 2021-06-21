# Email
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Analysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] 
**Attachments** | **String[]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**Bcc** | **String[]** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**Body** | **String** | The body of the email message | [optional] 
**BodyMD5Hash** | **String** | A hash signature of the email message | [optional] 
**Cc** | **String[]** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**Charset** | **String** | Detected character set of the email body such as UTF-8 | [optional] 
**CreatedAt** | **System.DateTime** | When was the email received by MailSlurp | [optional] 
**VarFrom** | **String** | Who the email was sent from | [optional] 
**Headers** | **System.Collections.Hashtable** | Collection of SMTP headers attached to email | [optional] 
**Id** | **String** | ID of the email entity | [optional] 
**InboxId** | **String** | ID of the inbox that received the email | [optional] 
**IsHTML** | **Boolean** | Is the email body HTML | [optional] 
**Read** | **Boolean** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API? If so the email is marked as read. | [optional] 
**ReplyTo** | **String** | The &#x60;replyTo&#x60; field on the received email message | [optional] 
**Subject** | **String** | The subject line of the email message | [optional] 
**TeamAccess** | **Boolean** | Can the email be accessed by organization team members | [optional] 
**To** | **String[]** | List of &#x60;To&#x60; recipients that email was addressed to | [optional] 
**UpdatedAt** | **System.DateTime** | When was the email last updated | [optional] 
**UserId** | **String** | ID of user that email belongs to | [optional] 

## Examples

- Prepare the resource
```powershell
$Email = Initialize-maislurp-client-powershellEmail  -Analysis null `
 -Attachments null `
 -Bcc null `
 -Body null `
 -BodyMD5Hash null `
 -Cc null `
 -Charset null `
 -CreatedAt null `
 -VarFrom null `
 -Headers null `
 -Id null `
 -InboxId null `
 -IsHTML null `
 -Read null `
 -ReplyTo null `
 -Subject null `
 -TeamAccess null `
 -To null `
 -UpdatedAt null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$Email | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

