# TotpDeviceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**Issuer** | **String** |  | [optional] 
**Digits** | **Int32** |  | [optional] 
**Period** | **Int32** |  | [optional] 
**Algorithm** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$TotpDeviceDto = Initialize-maislurp-client-powershellTotpDeviceDto  -Id null `
 -Name null `
 -Username null `
 -Issuer null `
 -Digits null `
 -Period null `
 -Algorithm null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$TotpDeviceDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

