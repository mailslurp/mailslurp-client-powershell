# WebhookNewAITransformResultPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**AiTransformResultId** | **String** | AI Transform ID of event | 
**UserId** | **String** | User ID of event | 
**AiTransformId** | **String** | ID of AI Transform | 
**AiTransformMappingId** | **String** | ID of AI Transform mapping | [optional] 
**EntityId** | **String** | ID of entity that triggered the transformation | [optional] 
**EntityType** | **String** | Entity type that triggered the transformation | [optional] 
**Result** | **String** | JSON string result of the AI transformation | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookNewAITransformResultPayload = Initialize-maislurp-client-powershellWebhookNewAITransformResultPayload  -MessageId null `
 -WebhookId null `
 -EventName null `
 -WebhookName null `
 -AiTransformResultId null `
 -UserId null `
 -AiTransformId null `
 -AiTransformMappingId null `
 -EntityId null `
 -EntityType null `
 -Result null
```

- Convert the resource to JSON
```powershell
$WebhookNewAITransformResultPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

