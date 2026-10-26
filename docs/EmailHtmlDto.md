# EmailHtmlDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**Body** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailHtmlDto = Initialize-maislurp-client-powershellEmailHtmlDto  -Subject null `
 -Body null
```

- Convert the resource to JSON
```powershell
$EmailHtmlDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

