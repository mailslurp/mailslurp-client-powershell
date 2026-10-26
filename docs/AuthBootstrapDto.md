# AuthBootstrapDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | [**TemporaryAccessKeyDto**](TemporaryAccessKeyDto) |  | 
**Account** | [**AccountDto**](AccountDto) |  | 
**UserPermissions** | [**UserPermissionDto[]**](UserPermissionDto) |  | 
**EffectiveUserPermissions** | **String[]** |  | 
**HomeExperience** | [**HomeExperienceDto**](HomeExperienceDto) |  | 

## Examples

- Prepare the resource
```powershell
$AuthBootstrapDto = Initialize-maislurp-client-powershellAuthBootstrapDto  -AccessToken null `
 -Account null `
 -UserPermissions null `
 -EffectiveUserPermissions null `
 -HomeExperience null
```

- Convert the resource to JSON
```powershell
$AuthBootstrapDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

