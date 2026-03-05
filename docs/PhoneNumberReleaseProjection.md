# PhoneNumberReleaseProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneCountry** | **String** |  | 
**PhoneNumber** | **String** |  | [optional] 
**SubscriptionSchedule** | **String** |  | [optional] 
**PlanCurrency** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberReleaseProjection = Initialize-maislurp-client-powershellPhoneNumberReleaseProjection  -UserId null `
 -CreatedAt null `
 -PhoneCountry null `
 -PhoneNumber null `
 -SubscriptionSchedule null `
 -PlanCurrency null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$PhoneNumberReleaseProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

