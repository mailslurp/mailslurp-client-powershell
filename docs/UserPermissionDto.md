# UserPermissionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | [optional] 
**OrganizationId** | **String** |  | [optional] 
**RoleId** | **String** |  | [optional] 
**PermissionType** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$UserPermissionDto = Initialize-maislurp-client-powershellUserPermissionDto  -Id null `
 -UserId null `
 -OrganizationId null `
 -RoleId null `
 -PermissionType null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$UserPermissionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

