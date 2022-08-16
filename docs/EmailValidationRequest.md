# EmailValidationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**IsValid** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmailValidationRequest = Initialize-maislurp-client-powershellEmailValidationRequest  -Id null `
 -UserId null `
 -EmailAddress null `
 -IsValid null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailValidationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

