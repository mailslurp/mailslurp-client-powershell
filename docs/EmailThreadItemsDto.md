# EmailThreadItemsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**EmailThreadItem[]**](EmailThreadItem) |  | 

## Examples

- Prepare the resource
```powershell
$EmailThreadItemsDto = Initialize-maislurp-client-powershellEmailThreadItemsDto  -Items null
```

- Convert the resource to JSON
```powershell
$EmailThreadItemsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

