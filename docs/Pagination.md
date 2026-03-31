# Pagination
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageNumber** | **Int32** |  | 
**PageSize** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$Pagination = Initialize-maislurp-client-powershellPagination  -PageNumber null `
 -PageSize null
```

- Convert the resource to JSON
```powershell
$Pagination | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

