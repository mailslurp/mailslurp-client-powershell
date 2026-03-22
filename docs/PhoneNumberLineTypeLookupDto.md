# PhoneNumberLineTypeLookupDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneNumber** | **String** |  | 
**NationalFormat** | **String** |  | [optional] 
**CountryCode** | **String** |  | [optional] 
**CountryPrefix** | **String** |  | [optional] 
**IsValid** | **Boolean** |  | 
**ValidationErrors** | **String[]** |  | [optional] 
**LineTypeIntelligence** | [**PhoneNumberLineTypeIntelligenceDto**](PhoneNumberLineTypeIntelligenceDto) |  | [optional] 
**MailslurpPhoneNumber** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberLineTypeLookupDto = Initialize-maislurp-client-powershellPhoneNumberLineTypeLookupDto  -PhoneNumber null `
 -NationalFormat null `
 -CountryCode null `
 -CountryPrefix null `
 -IsValid null `
 -ValidationErrors null `
 -LineTypeIntelligence null `
 -MailslurpPhoneNumber null
```

- Convert the resource to JSON
```powershell
$PhoneNumberLineTypeLookupDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

