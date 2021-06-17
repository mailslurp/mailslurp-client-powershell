# WebhookTestResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**StatusCode** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookTestResponse = Initialize-maislurp-client-powershellWebhookTestResponse  -Message null `
 -StatusCode null
```

- Convert the resource to JSON
```powershell
$WebhookTestResponse | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

