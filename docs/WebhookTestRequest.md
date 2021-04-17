# WebhookTestRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Headers** | **System.Collections.Hashtable** |  | 
**Method** | **String** |  | 
**Payload** | **String** |  | [optional] 
**Url** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookTestRequest = Initialize-maislurp-client-powershellWebhookTestRequest  -Headers null `
 -Method null `
 -Payload null `
 -Url null
```

- Convert the resource to JSON
```powershell
$WebhookTestRequest | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

