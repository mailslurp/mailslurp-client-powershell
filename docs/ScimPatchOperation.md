# ScimPatchOperation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** | **String** |  | [optional] 
**Path** | **String** |  | [optional] 
**Value** | [**SystemCollectionsHashtable**]() |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScimPatchOperation = Initialize-maislurp-client-powershellScimPatchOperation  -Op null `
 -Path null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ScimPatchOperation | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

