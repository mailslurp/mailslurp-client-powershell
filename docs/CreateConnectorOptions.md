# CreateConnectorOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of connector | [optional] 
**EmailAddress** | **String** | Email address of external inbox | [optional] 
**Enabled** | **Boolean** | Is connector enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorOptions = Initialize-maislurp-client-powershellCreateConnectorOptions  -Name null `
 -EmailAddress null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$CreateConnectorOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

