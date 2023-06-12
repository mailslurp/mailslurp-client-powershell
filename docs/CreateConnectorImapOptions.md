# CreateConnectorImapOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | 
**Port** | **Int32** |  | 
**Username** | **String** |  | 
**Password** | **String** |  | 
**UseSSL** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$CreateConnectorImapOptions = Initialize-maislurp-client-powershellCreateConnectorImapOptions  -VarHost null `
 -Port null `
 -Username null `
 -Password null `
 -UseSSL null
```

- Convert the resource to JSON
```powershell
$CreateConnectorImapOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

