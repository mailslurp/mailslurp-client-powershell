# PhonePlanAvailabilityItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountry** | **String** |  | 
**AvailabilityStatus** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhonePlanAvailabilityItem = Initialize-maislurp-client-powershellPhonePlanAvailabilityItem  -PhoneCountry null `
 -AvailabilityStatus null
```

- Convert the resource to JSON
```powershell
$PhonePlanAvailabilityItem | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

