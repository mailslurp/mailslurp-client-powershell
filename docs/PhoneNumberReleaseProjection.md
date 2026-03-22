# PhoneNumberReleaseProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneCountry** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneNumber** | **String** |  | [optional] 
**SubscriptionSchedule** | **String** |  | [optional] 
**PlanCurrency** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneNumberReleaseProjection = Initialize-maislurp-client-powershellPhoneNumberReleaseProjection  -Name null `
 -Id null `
 -UserId null `
 -PhoneCountry null `
 -CreatedAt null `
 -PhoneNumber null `
 -SubscriptionSchedule null `
 -PlanCurrency null
```

- Convert the resource to JSON
```powershell
$PhoneNumberReleaseProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

