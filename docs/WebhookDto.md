# WebhookDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BasicAuth** | **Boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | [optional] 
**CreatedAt** | **System.DateTime** | When the webhook was created | [optional] 
**EventName** | **String** |  | [optional] 
**Id** | **String** | ID of the Webhook | [optional] 
**InboxId** | **String** | The inbox that the Webhook will be triggered by | [optional] 
**Method** | **String** | HTTP method that your server endpoint must listen for | [optional] 
**Name** | **String** | Name of the webhook | [optional] 
**PayloadJsonSchema** | **String** | JSON Schema for the payload that will be sent to your URL via the HTTP method described. | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**Url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | [optional] 
**UserId** | **String** | User ID of the Webhook | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookDto = Initialize-maislurp-client-powershellWebhookDto  -BasicAuth null `
 -CreatedAt null `
 -EventName null `
 -Id null `
 -InboxId null `
 -Method null `
 -Name null `
 -PayloadJsonSchema null `
 -UpdatedAt null `
 -Url null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$WebhookDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

