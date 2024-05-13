# PhoneNumberProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneNumberProjection = Initialize-maislurp-client-powershellPhoneNumberProjection  -UserId null `
 -PhoneNumber null `
 -PhoneCountry null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$PhoneNumberProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

