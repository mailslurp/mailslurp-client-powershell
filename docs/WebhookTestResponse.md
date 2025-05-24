# WebhookTestResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | **Int32** |  | [optional] 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookTestResponse = Initialize-maislurp-client-powershellWebhookTestResponse  -StatusCode null `
 -Message null
```

- Convert the resource to JSON
```powershell
$WebhookTestResponse | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

