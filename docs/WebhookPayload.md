# WebhookPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttachmentMetaDatas** | [**AttachmentMetaData[]**](AttachmentMetaData) | List of attachment meta data objects if attachments present | [optional] 
**Bcc** | **String[]** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**Cc** | **String[]** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**CreatedAt** | **System.DateTime** | Date time of event creation | [optional] 
**EmailId** | **String** | ID of the email that was received. Use this ID for fetching the email | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for | [optional] 
**VarFrom** | **String** | Who the email was sent from | [optional] 
**Id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**InboxId** | **String** | Id of the inbox that receive an email | [optional] 
**Subject** | **String** | The subject line of the email message | [optional] 
**To** | **String[]** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookPayload = Initialize-maislurp-client-powershellWebhookPayload  -AttachmentMetaDatas null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -EmailId null `
 -EventName null `
 -VarFrom null `
 -Id null `
 -InboxId null `
 -Subject null `
 -To null `
 -WebhookId null `
 -WebhookName null
```

- Convert the resource to JSON
```powershell
$WebhookPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

