# PhoneNumberDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Tags** | **String[]** |  | 
**UserId** | **String** |  | 
**ComplianceAddress** | **String** |  | [optional] 
**EmergencyAddress** | **String** |  | [optional] 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**PhonePlan** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Favourite** | **Boolean** |  | 
**PhoneVariant** | **String** |  | [optional] 
**LineType** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 
**ProviderLabel** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneNumberDto = Initialize-maislurp-client-powershellPhoneNumberDto  -Id null `
 -Name null `
 -Description null `
 -Tags null `
 -UserId null `
 -ComplianceAddress null `
 -EmergencyAddress null `
 -PhoneNumber null `
 -PhoneCountry null `
 -PhonePlan null `
 -CreatedAt null `
 -UpdatedAt null `
 -Favourite null `
 -PhoneVariant null `
 -LineType null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null `
 -ProviderLabel null
```

- Convert the resource to JSON
```powershell
$PhoneNumberDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

