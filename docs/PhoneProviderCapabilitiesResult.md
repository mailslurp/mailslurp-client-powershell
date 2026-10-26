# PhoneProviderCapabilitiesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProviderLabel** | **String** |  | 
**PhoneCountry** | **String** |  | 
**SupportedVariants** | **String[]** |  | 
**Warning** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneProviderCapabilitiesResult = Initialize-maislurp-client-powershellPhoneProviderCapabilitiesResult  -ProviderLabel null `
 -PhoneCountry null `
 -SupportedVariants null `
 -Warning null
```

- Convert the resource to JSON
```powershell
$PhoneProviderCapabilitiesResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

