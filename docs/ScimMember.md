# ScimMember
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** |  | 
**Ref** | **String** |  | [optional] 
**Display** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScimMember = Initialize-maislurp-client-powershellScimMember  -Value null `
 -Ref null `
 -Display null
```

- Convert the resource to JSON
```powershell
$ScimMember | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

