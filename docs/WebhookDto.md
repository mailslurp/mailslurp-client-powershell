# WebhookDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the Webhook | 
**UserId** | **String** | User ID of the Webhook | 
**BasicAuth** | **Boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | 
**Name** | **String** | Name of the webhook | [optional] 
**InboxId** | **String** | The inbox that the Webhook will be triggered by. If null then webhook triggered at account level | [optional] 
**Url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | 
**Method** | **String** | HTTP method that your server endpoint must listen for | 
**PayloadJsonSchema** | **String** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | 
**CreatedAt** | **System.DateTime** | When the webhook was created | 
**UpdatedAt** | **System.DateTime** |  | 
**EventName** | **String** | Webhook trigger event name | [optional] 
**RequestHeaders** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookDto = Initialize-maislurp-client-powershellWebhookDto  -Id null `
 -UserId null `
 -BasicAuth null `
 -Name null `
 -InboxId null `
 -Url null `
 -Method null `
 -PayloadJsonSchema null `
 -CreatedAt null `
 -UpdatedAt null `
 -EventName null `
 -RequestHeaders null
```

- Convert the resource to JSON
```powershell
$WebhookDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

