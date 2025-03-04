# GuestPortalUserProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**PortalId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Username** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GuestPortalUserProjection = Initialize-maislurp-client-powershellGuestPortalUserProjection  -CreatedAt null `
 -UpdatedAt null `
 -UserId null `
 -EmailAddress null `
 -InboxId null `
 -PortalId null `
 -Name null `
 -Id null `
 -Username null
```

- Convert the resource to JSON
```powershell
$GuestPortalUserProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

