# AuthV2PasswordLoginOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**Password** | **String** |  | 
**OrganizationSlug** | **String** |  | [optional] 
**ReturnTo** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthV2PasswordLoginOptions = Initialize-maislurp-client-powershellAuthV2PasswordLoginOptions  -EmailAddress null `
 -Password null `
 -OrganizationSlug null `
 -ReturnTo null
```

- Convert the resource to JSON
```powershell
$AuthV2PasswordLoginOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

