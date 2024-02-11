# CreateConnectorImapFetchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectFolder** | **String** |  | [optional] 
**SearchTerms** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorImapFetchOptions = Initialize-maislurp-client-powershellCreateConnectorImapFetchOptions  -SelectFolder null `
 -SearchTerms null
```

- Convert the resource to JSON
```powershell
$CreateConnectorImapFetchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

