# CreatePhoneNumberOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountry** | **String** |  | 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Tags** | **String[]** |  | [optional] 
**Schedule** | **String** |  | [optional] 
**PhoneNumberEndpointOverride** | **String** |  | [optional] 
**PhoneNumberVariant** | **String** |  | [optional] 
**PhoneProvider** | **String** |  | [optional] 
**PhoneLineFilter** | **String** | Line-quality preference for simple phone number provisioning | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePhoneNumberOptions = Initialize-maislurp-client-powershellCreatePhoneNumberOptions  -PhoneCountry null `
 -Name null `
 -Description null `
 -Tags null `
 -Schedule null `
 -PhoneNumberEndpointOverride null `
 -PhoneNumberVariant null `
 -PhoneProvider null `
 -PhoneLineFilter null
```

- Convert the resource to JSON
```powershell
$CreatePhoneNumberOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

