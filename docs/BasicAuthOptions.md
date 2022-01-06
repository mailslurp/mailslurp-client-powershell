# BasicAuthOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BasicAuthOptions = Initialize-maislurp-client-powershellBasicAuthOptions  -Username null `
 -Password null
```

- Convert the resource to JSON
```powershell
$BasicAuthOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

