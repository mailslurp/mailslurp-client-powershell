# SearchAvailablePhoneNumbersOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountry** | **String** |  | 
**PhoneVariant** | **String** |  | [optional] 
**QualityFilter** | **String** | Quality filter for advanced phone provisioning search | [optional] 
**LineType** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 
**ProviderLabels** | **String[]** |  | [optional] 
**Limit** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchAvailablePhoneNumbersOptions = Initialize-maislurp-client-powershellSearchAvailablePhoneNumbersOptions  -PhoneCountry null `
 -PhoneVariant null `
 -QualityFilter null `
 -LineType null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null `
 -ProviderLabels null `
 -Limit null
```

- Convert the resource to JSON
```powershell
$SearchAvailablePhoneNumbersOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

