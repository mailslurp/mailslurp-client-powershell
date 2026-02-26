# PhoneNumberProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberProjection = Initialize-maislurp-client-powershellPhoneNumberProjection  -UserId null `
 -CreatedAt null `
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

