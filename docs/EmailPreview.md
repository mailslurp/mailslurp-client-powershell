# EmailPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the email entity | 
**DomainId** | **String** | ID of the domain that received the email | [optional] 
**Subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**To** | **String[]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**VarFrom** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**Bcc** | **String[]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**Cc** | **String[]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**CreatedAt** | **System.DateTime** | When was the email received by MailSlurp | 
**Read** | **Boolean** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. | 
**Attachments** | **String[]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailPreview = Initialize-maislurp-client-powershellEmailPreview  -Id null `
 -DomainId null `
 -Subject null `
 -To null `
 -VarFrom null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -Read null `
 -Attachments null
```

- Convert the resource to JSON
```powershell
$EmailPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

