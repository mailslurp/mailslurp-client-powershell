# WebhookNewAttachmentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttachmentId** | **String** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | [optional] 
**ContentLength** | **Int64** | Size of attachment in bytes | [optional] 
**ContentType** | **String** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**Name** | **String** | Filename of the attachment if present | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookNewAttachmentPayload = Initialize-maislurp-client-powershellWebhookNewAttachmentPayload  -AttachmentId null `
 -ContentLength null `
 -ContentType null `
 -EventName null `
 -MessageId null `
 -Name null `
 -WebhookId null `
 -WebhookName null
```

- Convert the resource to JSON
```powershell
$WebhookNewAttachmentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

