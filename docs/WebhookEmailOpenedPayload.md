# WebhookEmailOpenedPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | Date time of event creation | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**InboxId** | **String** | Id of the inbox that received an email | [optional] 
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**PixelId** | **String** | ID of the tracking pixel | [optional] 
**Recipient** | **String** | Email address for the recipient of the tracking pixel | [optional] 
**SentEmailId** | **String** | ID of sent email | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookEmailOpenedPayload = Initialize-maislurp-client-powershellWebhookEmailOpenedPayload  -CreatedAt null `
 -EventName null `
 -InboxId null `
 -MessageId null `
 -PixelId null `
 -Recipient null `
 -SentEmailId null `
 -WebhookId null `
 -WebhookName null
```

- Convert the resource to JSON
```powershell
$WebhookEmailOpenedPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

