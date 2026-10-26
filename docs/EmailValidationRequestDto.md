# EmailValidationRequestDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**IsValid** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmailValidationRequestDto = Initialize-maislurp-client-powershellEmailValidationRequestDto  -Id null `
 -UserId null `
 -EmailAddress null `
 -IsValid null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailValidationRequestDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

