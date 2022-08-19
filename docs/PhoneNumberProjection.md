# PhoneNumberProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberProjection = Initialize-maislurp-client-powershellPhoneNumberProjection  -Id null `
 -UserId null `
 -PhoneNumber null `
 -PhoneCountry null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$PhoneNumberProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

