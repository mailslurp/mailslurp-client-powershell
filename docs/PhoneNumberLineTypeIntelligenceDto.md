# PhoneNumberLineTypeIntelligenceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 
**ErrorCode** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneNumberLineTypeIntelligenceDto = Initialize-maislurp-client-powershellPhoneNumberLineTypeIntelligenceDto  -Type null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null `
 -ErrorCode null
```

- Convert the resource to JSON
```powershell
$PhoneNumberLineTypeIntelligenceDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

