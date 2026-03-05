# MissedSmsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**ToNumber** | **String** |  | [optional] 
**Body** | **String** |  | 
**Sid** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$MissedSmsDto = Initialize-maislurp-client-powershellMissedSmsDto  -Id null `
 -UserId null `
 -PhoneNumber null `
 -FromNumber null `
 -ToNumber null `
 -Body null `
 -Sid null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$MissedSmsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

