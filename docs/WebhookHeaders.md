# WebhookHeaders
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Headers** | [**WebhookHeaderNameValue[]**](WebhookHeaderNameValue) | List of header name value pairs to include with webhook requests | 

## Examples

- Prepare the resource
```powershell
$WebhookHeaders = Initialize-maislurp-client-powershellWebhookHeaders  -Headers null
```

- Convert the resource to JSON
```powershell
$WebhookHeaders | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

