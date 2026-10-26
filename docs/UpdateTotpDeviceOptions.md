# UpdateTotpDeviceOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Updated name for labeling the TOTP device | [optional] 
**Username** | **String** | Updated username for the TOTP device | [optional] 
**Issuer** | **String** | Updated issuer for the TOTP device | [optional] 
**Digits** | **Int32** | Updated number of digits in TOTP code | [optional] 
**Period** | **Int32** | Updated period in seconds for TOTP code expiration | [optional] 
**Algorithm** | **String** | Updated algorithm for the TOTP device | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateTotpDeviceOptions = Initialize-maislurp-client-powershellUpdateTotpDeviceOptions  -Name null `
 -Username null `
 -Issuer null `
 -Digits null `
 -Period null `
 -Algorithm null
```

- Convert the resource to JSON
```powershell
$UpdateTotpDeviceOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

