# PhoneNumberValidationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CountryCode** | **String** |  | [optional] 
**CountryPrefix** | **String** |  | [optional] 
**PhoneNumber** | **String** |  | 
**IsValid** | **Boolean** |  | 
**ValidationErrors** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneNumberValidationDto = Initialize-maislurp-client-powershellPhoneNumberValidationDto  -CountryCode null `
 -CountryPrefix null `
 -PhoneNumber null `
 -IsValid null `
 -ValidationErrors null
```

- Convert the resource to JSON
```powershell
$PhoneNumberValidationDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

