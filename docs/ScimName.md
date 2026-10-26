# ScimName
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Formatted** | **String** |  | [optional] 
**GivenName** | **String** |  | [optional] 
**FamilyName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScimName = Initialize-maislurp-client-powershellScimName  -Formatted null `
 -GivenName null `
 -FamilyName null
```

- Convert the resource to JSON
```powershell
$ScimName | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

