# AbstractWebhookPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventName** | **String** |  | [optional] 
**WebhookId** | **String** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**WebhookName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AbstractWebhookPayload = Initialize-maislurp-client-powershellAbstractWebhookPayload  -EventName null `
 -WebhookId null `
 -MessageId null `
 -WebhookName null
```

- Convert the resource to JSON
```powershell
$AbstractWebhookPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

