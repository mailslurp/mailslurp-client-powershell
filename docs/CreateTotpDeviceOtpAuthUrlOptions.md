# CreateTotpDeviceOtpAuthUrlOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OtpAuthUrl** | **String** | OTP Auth URI for connecting a TOTP device. | 
**Name** | **String** | Name for labeling the TOTP device | [optional] 
**Username** | **String** | Optional username for the TOTP device | [optional] 
**Issuer** | **String** | Optional issuer override for the TOTP device | [optional] 
**Digits** | **Int32** | Optional number of digits in TOTP code | [optional] [default to 6]
**Period** | **Int32** | Optional period in seconds for TOTP code expiration | [optional] [default to 30]
**Algorithm** | **String** | Optional algorithm override | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateTotpDeviceOtpAuthUrlOptions = Initialize-maislurp-client-powershellCreateTotpDeviceOtpAuthUrlOptions  -OtpAuthUrl otpauth://totp/your-app:contact%40mailslurp.dev?secret&#x3D;LJCTOYKGGBAWCMSHJRZGITCVLIXCG4JY&amp;issuer&#x3D;your-app&amp;algorithm&#x3D;SHA1&amp;digits&#x3D;6&amp;period&#x3D;30 `
 -Name null `
 -Username null `
 -Issuer null `
 -Digits null `
 -Period null `
 -Algorithm SHA1
```

- Convert the resource to JSON
```powershell
$CreateTotpDeviceOtpAuthUrlOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

