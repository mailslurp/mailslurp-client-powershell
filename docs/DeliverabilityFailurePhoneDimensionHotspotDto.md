# DeliverabilityFailurePhoneDimensionHotspotDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountry** | **String** |  | [optional] 
**PhoneVariant** | **String** |  | [optional] 
**FailedRunCount** | **Int64** |  | 
**TotalRunCount** | **Int64** |  | 
**FailureRatePercentage** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityFailurePhoneDimensionHotspotDto = Initialize-maislurp-client-powershellDeliverabilityFailurePhoneDimensionHotspotDto  -PhoneCountry null `
 -PhoneVariant null `
 -FailedRunCount null `
 -TotalRunCount null `
 -FailureRatePercentage null
```

- Convert the resource to JSON
```powershell
$DeliverabilityFailurePhoneDimensionHotspotDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

