# GuestPortalUserDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PortalId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Username** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**LoginUrl** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$GuestPortalUserDto = Initialize-maislurp-client-powershellGuestPortalUserDto  -Id null `
 -UserId null `
 -PortalId null `
 -Name null `
 -Username null `
 -EmailAddress null `
 -InboxId null `
 -LoginUrl null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$GuestPortalUserDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

