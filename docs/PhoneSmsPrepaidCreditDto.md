# PhoneSmsPrepaidCreditDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**PhoneCountry** | **String** | Null means the balance is global for the account rather than country-specific. | [optional] 
**Global** | **Boolean** |  | 
**RemainingCredits** | **Int64** |  | 
**InitialCredits** | **Int64** |  | 
**SentMultiplier** | **Int32** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneSmsPrepaidCreditDto = Initialize-maislurp-client-powershellPhoneSmsPrepaidCreditDto  -Id null `
 -PhoneCountry null `
 -Global null `
 -RemainingCredits null `
 -InitialCredits null `
 -SentMultiplier null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PhoneSmsPrepaidCreditDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

