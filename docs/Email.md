# Email
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the email entity | 
**UserId** | **String** | ID of user that email belongs to | 
**InboxId** | **String** | ID of the inbox that received the email | 
**DomainId** | **String** | ID of the domain that received the email | [optional] 
**To** | **String[]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**VarFrom** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**ReplyTo** | **String** | The &#x60;replyTo&#x60; field on the received email message | [optional] 
**Cc** | **String[]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**Bcc** | **String[]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**Headers** | **System.Collections.Hashtable** | Collection of SMTP headers attached to email | [optional] 
**HeadersMap** | [**System.Collections.Hashtable**](Array) | Multi-value map of SMTP headers attached to email | [optional] 
**Attachments** | **String[]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**Subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**Body** | **String** | The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. | [optional] 
**BodyExcerpt** | **String** | An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not | [optional] 
**TextExcerpt** | **String** | An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists | [optional] 
**BodyMD5Hash** | **String** | A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. | [optional] 
**IsHTML** | **Boolean** | Is the email body content type HTML? | [optional] 
**Charset** | **String** | Detected character set of the email body such as UTF-8 | [optional] 
**Analysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] 
**CreatedAt** | **System.DateTime** | When was the email received by MailSlurp | 
**UpdatedAt** | **System.DateTime** | When was the email last updated | 
**Read** | **Boolean** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. | 
**TeamAccess** | **Boolean** | Can the email be accessed by organization team members | 
**IsXAmpHtml** | **Boolean** | Is the email body content type x-amp-html Amp4Email? | [optional] 
**BodyPartContentTypes** | **String[]** | A list of detected multipart mime message body part content types such as text/plain and text/html. Can be used with email bodyPart endpoints to fetch individual body parts. | [optional] 
**ExternalId** | **String** | UID used by external IMAP server to identify email | [optional] 
**MessageId** | **String** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**ThreadId** | **String** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**InReplyTo** | **String** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**Favourite** | **Boolean** | Is email favourited | [optional] 
**SizeBytes** | **Int64** | Size of raw email message in bytes | [optional] 
**Html** | **Boolean** |  | [optional] 
**XampHtml** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Email = Initialize-maislurp-client-powershellEmail  -Id null `
 -UserId null `
 -InboxId null `
 -DomainId null `
 -To null `
 -VarFrom null `
 -VarSender null `
 -Recipients null `
 -ReplyTo null `
 -Cc null `
 -Bcc null `
 -Headers null `
 -HeadersMap null `
 -Attachments null `
 -Subject null `
 -Body null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -BodyMD5Hash null `
 -IsHTML null `
 -Charset null `
 -Analysis null `
 -CreatedAt null `
 -UpdatedAt null `
 -Read null `
 -TeamAccess null `
 -IsXAmpHtml null `
 -BodyPartContentTypes null `
 -ExternalId null `
 -MessageId null `
 -ThreadId null `
 -InReplyTo null `
 -Favourite null `
 -SizeBytes null `
 -Html null `
 -XampHtml null
```

- Convert the resource to JSON
```powershell
$Email | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

