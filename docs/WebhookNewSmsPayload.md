# WebhookNewSmsPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**SmsId** | **String** | ID of SMS message | 
**UserId** | **String** | User ID of event | 
**PhoneNumber** | **String** | ID of phone number receiving SMS | 
**ToNumber** | **String** | Recipient phone number | 
**FromNumber** | **String** | Sender phone number | 
**Body** | **String** | SMS message body | 
**Read** | **Boolean** | SMS has been read | 

## Examples

- Prepare the resource
```powershell
$WebhookNewSmsPayload = Initialize-maislurp-client-powershellWebhookNewSmsPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -SmsId null `
 -UserId null `
 -PhoneNumber null `
 -ToNumber null `
 -FromNumber null `
 -Body null `
 -Read null
```

- Convert the resource to JSON
```powershell
$WebhookNewSmsPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

