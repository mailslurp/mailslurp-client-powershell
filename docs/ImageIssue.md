# ImageIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | 
**ResponseStatus** | **Int32** |  | [optional] 
**Severity** | **String** |  | 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ImageIssue = Initialize-maislurp-client-powershellImageIssue  -Url null `
 -ResponseStatus null `
 -Severity null `
 -Message null
```

- Convert the resource to JSON
```powershell
$ImageIssue | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

