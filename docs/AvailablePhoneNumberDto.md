# AvailablePhoneNumberDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**PhoneVariant** | **String** |  | [optional] 
**LineType** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 
**ProviderLabel** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AvailablePhoneNumberDto = Initialize-maislurp-client-powershellAvailablePhoneNumberDto  -PhoneNumber null `
 -PhoneCountry null `
 -PhoneVariant null `
 -LineType null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null `
 -ProviderLabel null
```

- Convert the resource to JSON
```powershell
$AvailablePhoneNumberDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

