# AbstractWebhookPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WebhookName** | **String** |  | [optional] 
**EventName** | **String** |  | 
**WebhookId** | **String** |  | 
**MessageId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AbstractWebhookPayload = Initialize-maislurp-client-powershellAbstractWebhookPayload  -WebhookName null `
 -EventName null `
 -WebhookId null `
 -MessageId null
```

- Convert the resource to JSON
```powershell
$AbstractWebhookPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

