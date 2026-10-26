# SendingConnectionApiKeyOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiKey** | **String** |  | 
**SendingDomain** | **String** |  | [optional] 
**Region** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SendingConnectionApiKeyOptions = Initialize-maislurp-client-powershellSendingConnectionApiKeyOptions  -ApiKey null `
 -SendingDomain null `
 -Region null
```

- Convert the resource to JSON
```powershell
$SendingConnectionApiKeyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

