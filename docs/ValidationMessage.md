# ValidationMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LineNumber** | **Int32** |  | 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidationMessage = Initialize-maislurp-client-powershellValidationMessage  -LineNumber null `
 -Message null
```

- Convert the resource to JSON
```powershell
$ValidationMessage | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

