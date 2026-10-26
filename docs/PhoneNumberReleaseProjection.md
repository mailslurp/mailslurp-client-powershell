# PhoneNumberReleaseProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**SubscriptionSchedule** | **String** |  | [optional] 
**PlanCurrency** | **String** |  | [optional] 
**PhoneCountry** | **String** |  | 
**PhoneNumber** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberReleaseProjection = Initialize-maislurp-client-powershellPhoneNumberReleaseProjection  -Name null `
 -Id null `
 -UserId null `
 -SubscriptionSchedule null `
 -PlanCurrency null `
 -PhoneCountry null `
 -PhoneNumber null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$PhoneNumberReleaseProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

