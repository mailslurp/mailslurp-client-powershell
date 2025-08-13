# CreateOAuthExchangeResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**InboxId** | **String** |  | [optional] 
**VarError** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateOAuthExchangeResult = Initialize-maislurp-client-powershellCreateOAuthExchangeResult  -Success null `
 -InboxId null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$CreateOAuthExchangeResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

