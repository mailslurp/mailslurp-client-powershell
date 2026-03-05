# WebhookDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the Webhook | 
**UserId** | **String** | User ID of the Webhook | 
**BasicAuth** | **Boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | 
**Name** | **String** | Name of the webhook | [optional] 
**PhoneId** | **String** | The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set | [optional] 
**InboxId** | **String** | The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set | [optional] 
**RequestBodyTemplate** | **String** | Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload. | [optional] 
**Url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | 
**Method** | **String** | HTTP method that your server endpoint must listen for | 
**PayloadJsonSchema** | **String** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | 
**CreatedAt** | **System.DateTime** | When the webhook was created | 
**UpdatedAt** | **System.DateTime** |  | 
**EventName** | **String** | Webhook trigger event name | [optional] 
**RequestHeaders** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 
**AiTransformId** | **String** | ID of AI transformer for payload | [optional] 
**IgnoreInsecureSslCertificates** | **Boolean** | Should notifier ignore insecure SSL certificates | [optional] 
**UseStaticIpRange** | **Boolean** | Should notifier use static IP range when sending webhook payload | [optional] 
**HealthStatus** | **String** | Webhook health | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookDto = Initialize-maislurp-client-powershellWebhookDto  -Id null `
 -UserId null `
 -BasicAuth null `
 -Name null `
 -PhoneId null `
 -InboxId null `
 -RequestBodyTemplate null `
 -Url null `
 -Method null `
 -PayloadJsonSchema null `
 -CreatedAt null `
 -UpdatedAt null `
 -EventName null `
 -RequestHeaders null `
 -AiTransformId null `
 -IgnoreInsecureSslCertificates null `
 -UseStaticIpRange null `
 -HealthStatus null
```

- Convert the resource to JSON
```powershell
$WebhookDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

