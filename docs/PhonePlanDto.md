# PhonePlanDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneCountry** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PhonePlanDto = Initialize-maislurp-client-powershellPhonePlanDto  -Id null `
 -UserId null `
 -PhoneCountry null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$PhonePlanDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

