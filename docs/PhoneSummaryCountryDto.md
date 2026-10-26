# PhoneSummaryCountryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountryCode** | **String** |  | 
**TotalCount** | **Int64** |  | 
**HasPlan** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneSummaryCountryDto = Initialize-maislurp-client-powershellPhoneSummaryCountryDto  -PhoneCountryCode null `
 -TotalCount null `
 -HasPlan null
```

- Convert the resource to JSON
```powershell
$PhoneSummaryCountryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

