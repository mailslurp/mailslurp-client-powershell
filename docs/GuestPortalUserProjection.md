# GuestPortalUserProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**PortalId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GuestPortalUserProjection = Initialize-maislurp-client-powershellGuestPortalUserProjection  -Username null `
 -UserId null `
 -InboxId null `
 -EmailAddress null `
 -CreatedAt null `
 -UpdatedAt null `
 -PortalId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$GuestPortalUserProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

