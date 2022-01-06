# WebhookEmailReadPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**EmailId** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**InboxId** | **String** | Id of the inbox that received an email | [optional] 
**EmailIsRead** | **Boolean** | Is the email read | [optional] 
**CreatedAt** | **System.DateTime** | Date time of event creation | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookEmailReadPayload = Initialize-maislurp-client-powershellWebhookEmailReadPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -EmailId null `
 -InboxId null `
 -EmailIsRead null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$WebhookEmailReadPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

