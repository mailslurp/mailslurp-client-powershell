# WebhookEmailReadPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | Date time of event creation | [optional] 
**EmailId** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**EmailIsRead** | **Boolean** | Is the email read | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**InboxId** | **String** | Id of the inbox that received an email | [optional] 
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookEmailReadPayload = Initialize-maislurp-client-powershellWebhookEmailReadPayload  -CreatedAt null `
 -EmailId null `
 -EmailIsRead null `
 -EventName null `
 -InboxId null `
 -MessageId null `
 -WebhookId null `
 -WebhookName null
```

- Convert the resource to JSON
```powershell
$WebhookEmailReadPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

