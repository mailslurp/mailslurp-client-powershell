# WebhookDeliveryStatusPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**Id** | **String** | ID of delivery status | 
**UserId** | **String** | User ID of event | 
**SentId** | **String** | ID of sent email | [optional] 
**RemoteMtaIp** | **String** | IP address of the remote Mail Transfer Agent | [optional] 
**InboxId** | **String** | Id of the inbox | [optional] 
**ReportingMta** | **String** | Mail Transfer Agent reporting delivery status | [optional] 
**Recipients** | **String[]** | Recipients for delivery | [optional] 
**SmtpResponse** | **String** | SMTP server response message | [optional] 
**SmtpStatusCode** | **Int32** | SMTP server status | [optional] 
**ProcessingTimeMillis** | **Int64** | Time in milliseconds for delivery processing | [optional] 
**Received** | **System.DateTime** | Time event was received | [optional] 
**Subject** | **String** | Email subject | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookDeliveryStatusPayload = Initialize-maislurp-client-powershellWebhookDeliveryStatusPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -Id null `
 -UserId null `
 -SentId null `
 -RemoteMtaIp null `
 -InboxId null `
 -ReportingMta null `
 -Recipients null `
 -SmtpResponse null `
 -SmtpStatusCode null `
 -ProcessingTimeMillis null `
 -Received null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$WebhookDeliveryStatusPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

