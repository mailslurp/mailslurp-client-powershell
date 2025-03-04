# PhoneNumberProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberProjection = Initialize-maislurp-client-powershellPhoneNumberProjection  -CreatedAt null `
 -UserId null `
 -PhoneNumber null `
 -PhoneCountry null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$PhoneNumberProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

