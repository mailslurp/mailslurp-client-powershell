# WebhookNewAttachmentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**AttachmentId** | **String** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | 
**Name** | **String** | Filename of the attachment if present | 
**ContentType** | **String** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | 
**ContentLength** | **Int64** | Size of attachment in bytes | 

## Examples

- Prepare the resource
```powershell
$WebhookNewAttachmentPayload = Initialize-maislurp-client-powershellWebhookNewAttachmentPayload  -MessageId null `
 -WebhookId null `
 -WebhookName null `
 -EventName null `
 -AttachmentId null `
 -Name null `
 -ContentType null `
 -ContentLength null
```

- Convert the resource to JSON
```powershell
$WebhookNewAttachmentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

