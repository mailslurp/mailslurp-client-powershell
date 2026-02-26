# PhoneSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountrySummaries** | [**PhoneSummaryCountryDto[]**](PhoneSummaryCountryDto) |  | 
**HasPhoneNumbers** | **Boolean** |  | 
**HasMissingPlans** | **Boolean** |  | 
**TotalPhones** | **Int32** |  | 
**Plans** | [**PlanSummaryDto[]**](PlanSummaryDto) |  | 

## Examples

- Prepare the resource
```powershell
$PhoneSummaryDto = Initialize-maislurp-client-powershellPhoneSummaryDto  -PhoneCountrySummaries null `
 -HasPhoneNumbers null `
 -HasMissingPlans null `
 -TotalPhones null `
 -Plans null
```

- Convert the resource to JSON
```powershell
$PhoneSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

