# WebhookTestRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | 
**Method** | **String** |  | 
**Headers** | **System.Collections.Hashtable** |  | 
**Payload** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookTestRequest = Initialize-maislurp-client-powershellWebhookTestRequest  -Url null `
 -Method null `
 -Headers null `
 -Payload null
```

- Convert the resource to JSON
```powershell
$WebhookTestRequest | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

