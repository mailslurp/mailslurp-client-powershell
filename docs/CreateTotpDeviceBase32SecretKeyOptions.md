# CreateTotpDeviceBase32SecretKeyOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Base32SecretKey** | **String** | Base32 secret key for TOTP device as alternative to OTP Auth URI or QR code. | 
**Name** | **String** | Name for labeling the TOTP device | [optional] 
**Username** | **String** | Optional username for the TOTP device | [optional] 
**Issuer** | **String** | Optional issuer override for the TOTP device | [optional] 
**Digits** | **Int32** | Optional number of digits in TOTP code | [optional] [default to 6]
**Period** | **Int32** | Optional period in seconds for TOTP code expiration | [optional] [default to 30]
**Algorithm** | **String** | Optional algorithm override | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateTotpDeviceBase32SecretKeyOptions = Initialize-maislurp-client-powershellCreateTotpDeviceBase32SecretKeyOptions  -Base32SecretKey EVJWGYZUIVGECOSWGBKGSRTBPE3FQVDQ `
 -Name null `
 -Username null `
 -Issuer null `
 -Digits null `
 -Period null `
 -Algorithm SHA1
```

- Convert the resource to JSON
```powershell
$CreateTotpDeviceBase32SecretKeyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

