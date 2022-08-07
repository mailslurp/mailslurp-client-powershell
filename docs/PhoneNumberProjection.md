# PhoneNumberProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneCountry** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberProjection = Initialize-maislurp-client-powershellPhoneNumberProjection  -Id null `
 -UserId null `
 -PhoneNumber null `
 -CreatedAt null `
 -PhoneCountry null
```

- Convert the resource to JSON
```powershell
$PhoneNumberProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

