# PhoneSmsPrepaidCreditsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** |  | 
**TotalRemainingCredits** | **Int64** |  | 
**Items** | [**PhoneSmsPrepaidCreditDto[]**](PhoneSmsPrepaidCreditDto) |  | 

## Examples

- Prepare the resource
```powershell
$PhoneSmsPrepaidCreditsDto = Initialize-maislurp-client-powershellPhoneSmsPrepaidCreditsDto  -Count null `
 -TotalRemainingCredits null `
 -Items null
```

- Convert the resource to JSON
```powershell
$PhoneSmsPrepaidCreditsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

