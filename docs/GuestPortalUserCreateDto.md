# GuestPortalUserCreateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Guest** | [**GuestPortalUserDto**](GuestPortalUserDto) |  | 
**Password** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GuestPortalUserCreateDto = Initialize-maislurp-client-powershellGuestPortalUserCreateDto  -Guest null `
 -Password null
```

- Convert the resource to JSON
```powershell
$GuestPortalUserCreateDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

