# EmptyResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmptyResponseDto = Initialize-maislurp-client-powershellEmptyResponseDto  -Message null
```

- Convert the resource to JSON
```powershell
$EmptyResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

