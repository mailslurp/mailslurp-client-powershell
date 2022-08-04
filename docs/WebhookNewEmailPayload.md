# WebhookNewEmailPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**InboxId** | **String** | Id of the inbox that received an email | 
**DomainId** | **String** | Id of the domain that received an email | [optional] 
**EmailId** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**CreatedAt** | **System.DateTime** | Date time of event creation | 
**To** | **String[]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**VarFrom** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | 
**Cc** | **String[]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**Bcc** | **String[]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**Subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**AttachmentMetaDatas** | [**AttachmentMetaData[]**](AttachmentMetaData) | List of attachment meta data objects if attachments present | 

## Examples

- Prepare the resource
```powershell
$WebhookNewEmailPayload = Initialize-maislurp-client-powershellWebhookNewEmailPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -InboxId null `
 -DomainId null `
 -EmailId null `
 -CreatedAt null `
 -To null `
 -VarFrom null `
 -Cc null `
 -Bcc null `
 -Subject null `
 -AttachmentMetaDatas null
```

- Convert the resource to JSON
```powershell
$WebhookNewEmailPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

