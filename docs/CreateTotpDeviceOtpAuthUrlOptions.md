# CreateTotpDeviceOtpAuthUrlOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OtpAuthUrl** | **String** |  | 
**Name** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**Issuer** | **String** |  | [optional] 
**Digits** | **Int32** |  | [optional] 
**Period** | **Int32** |  | [optional] 
**Algorithm** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateTotpDeviceOtpAuthUrlOptions = Initialize-maislurp-client-powershellCreateTotpDeviceOtpAuthUrlOptions  -OtpAuthUrl null `
 -Name null `
 -Username null `
 -Issuer null `
 -Digits null `
 -Period null `
 -Algorithm null
```

- Convert the resource to JSON
```powershell
$CreateTotpDeviceOtpAuthUrlOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

