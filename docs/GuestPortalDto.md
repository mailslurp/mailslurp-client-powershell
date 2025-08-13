# GuestPortalDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DomainId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**LinkHelp** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**LoginUrl** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GuestPortalDto = Initialize-maislurp-client-powershellGuestPortalDto  -Id null `
 -DomainId null `
 -UserId null `
 -Name null `
 -Description null `
 -LinkHelp null `
 -CreatedAt null `
 -UpdatedAt null `
 -LoginUrl null
```

- Convert the resource to JSON
```powershell
$GuestPortalDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

