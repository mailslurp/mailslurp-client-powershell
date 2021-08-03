# ValidationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailId** | **String** | ID of the email validated | [optional] 
**Html** | [**HTMLValidationResult**](HTMLValidationResult) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidationDto = Initialize-maislurp-client-powershellValidationDto  -EmailId null `
 -Html null
```

- Convert the resource to JSON
```powershell
$ValidationDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

