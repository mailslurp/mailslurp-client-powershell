# ScimPatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Schemas** | **String[]** |  | 
**Operations** | [**ScimPatchOperation[]**](ScimPatchOperation) |  | 

## Examples

- Prepare the resource
```powershell
$ScimPatchRequest = Initialize-maislurp-client-powershellScimPatchRequest  -Schemas null `
 -Operations null
```

- Convert the resource to JSON
```powershell
$ScimPatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

