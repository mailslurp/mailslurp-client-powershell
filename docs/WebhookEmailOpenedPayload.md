# WebhookEmailOpenedPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**InboxId** | **String** | Id of the inbox that received an email | [optional] 
**PixelId** | **String** | ID of the tracking pixel | [optional] 
**SentEmailId** | **String** | ID of sent email | [optional] 
**Recipient** | **String** | Email address for the recipient of the tracking pixel | [optional] 
**CreatedAt** | **System.DateTime** | Date time of event creation | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookEmailOpenedPayload = Initialize-maislurp-client-powershellWebhookEmailOpenedPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -InboxId null `
 -PixelId null `
 -SentEmailId null `
 -Recipient null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$WebhookEmailOpenedPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

