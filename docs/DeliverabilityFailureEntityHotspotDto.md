# DeliverabilityFailureEntityHotspotDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | **String** |  | 
**EntityLabel** | **String** |  | 
**Scope** | **String** |  | 
**PhoneCountry** | **String** |  | [optional] 
**PhoneVariant** | **String** |  | [optional] 
**FailedRunCount** | **Int64** |  | 
**TotalRunCount** | **Int64** |  | 
**FailureRatePercentage** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityFailureEntityHotspotDto = Initialize-maislurp-client-powershellDeliverabilityFailureEntityHotspotDto  -EntityId null `
 -EntityLabel null `
 -Scope null `
 -PhoneCountry null `
 -PhoneVariant null `
 -FailedRunCount null `
 -TotalRunCount null `
 -FailureRatePercentage null
```

- Convert the resource to JSON
```powershell
$DeliverabilityFailureEntityHotspotDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

