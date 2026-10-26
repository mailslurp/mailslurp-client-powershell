# TotpDeviceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algorithm** | **String** |  | [optional] 
**Period** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Digits** | **Int32** |  | [optional] 
**Username** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**Issuer** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TotpDeviceProjection = Initialize-maislurp-client-powershellTotpDeviceProjection  -Algorithm null `
 -Period null `
 -Name null `
 -Id null `
 -Digits null `
 -Username null `
 -CreatedAt null `
 -UpdatedAt null `
 -ExpiresAt null `
 -Issuer null
```

- Convert the resource to JSON
```powershell
$TotpDeviceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

