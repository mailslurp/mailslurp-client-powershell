# AbstractWebhookPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventName** | **String** |  | 
**WebhookName** | **String** |  | [optional] 
**MessageId** | **String** |  | 
**WebhookId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AbstractWebhookPayload = Initialize-maislurp-client-powershellAbstractWebhookPayload  -EventName null `
 -WebhookName null `
 -MessageId null `
 -WebhookId null
```

- Convert the resource to JSON
```powershell
$AbstractWebhookPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

