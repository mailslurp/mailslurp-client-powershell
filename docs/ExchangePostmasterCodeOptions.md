# ExchangePostmasterCodeOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorizationCode** | **String** |  | 
**RedirectUri** | **String** |  | 
**State** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExchangePostmasterCodeOptions = Initialize-maislurp-client-powershellExchangePostmasterCodeOptions  -AuthorizationCode null `
 -RedirectUri null `
 -State null
```

- Convert the resource to JSON
```powershell
$ExchangePostmasterCodeOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

