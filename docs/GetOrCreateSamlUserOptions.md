# GetOrCreateSamlUserOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | **String** |  | 
**NameId** | **String** |  | 
**NameIdFormat** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrCreateSamlUserOptions = Initialize-maislurp-client-powershellGetOrCreateSamlUserOptions  -Issuer null `
 -NameId null `
 -NameIdFormat null
```

- Convert the resource to JSON
```powershell
$GetOrCreateSamlUserOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

