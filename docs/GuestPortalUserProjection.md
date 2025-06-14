# GuestPortalUserProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PortalId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GuestPortalUserProjection = Initialize-maislurp-client-powershellGuestPortalUserProjection  -Username null `
 -InboxId null `
 -UserId null `
 -EmailAddress null `
 -UpdatedAt null `
 -CreatedAt null `
 -PortalId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$GuestPortalUserProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

