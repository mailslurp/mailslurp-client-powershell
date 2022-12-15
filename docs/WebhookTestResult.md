# WebhookTestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Response** | [**WebhookTestResponse**](WebhookTestResponse) |  | 
**Request** | [**WebhookTestRequest**](WebhookTestRequest) |  | 

## Examples

- Prepare the resource
```powershell
$WebhookTestResult = Initialize-maislurp-client-powershellWebhookTestResult  -Message null `
 -Response null `
 -Request null
```

- Convert the resource to JSON
```powershell
$WebhookTestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

