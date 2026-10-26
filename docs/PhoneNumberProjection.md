# PhoneNumberProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Tags** | **String[]** |  | [optional] 
**UserId** | **String** |  | 
**PhoneCountry** | **String** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**ProviderLabel** | **String** |  | [optional] 
**LineType** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneNumberProjection = Initialize-maislurp-client-powershellPhoneNumberProjection  -Name null `
 -Id null `
 -Tags null `
 -UserId null `
 -PhoneCountry null `
 -PhoneNumber null `
 -CreatedAt null `
 -ProviderLabel null `
 -LineType null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null
```

- Convert the resource to JSON
```powershell
$PhoneNumberProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

