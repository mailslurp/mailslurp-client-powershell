# IPAddressResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** |  | [optional] 
**Hostname** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IPAddressResult = Initialize-maislurp-client-powershellIPAddressResult  -Address null `
 -Hostname null
```

- Convert the resource to JSON
```powershell
$IPAddressResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

