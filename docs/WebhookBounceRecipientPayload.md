# WebhookBounceRecipientPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**Recipient** | **String** | Email address that caused a bounce. Make note of the address and try not to message it again to preserve your reputation. | 

## Examples

- Prepare the resource
```powershell
$WebhookBounceRecipientPayload = Initialize-maislurp-client-powershellWebhookBounceRecipientPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -Recipient null
```

- Convert the resource to JSON
```powershell
$WebhookBounceRecipientPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

