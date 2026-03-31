# PageTableData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Headers** | **String[]** |  | 
**Rows** | [**String[][]**](Array) |  | 
**Pagination** | [**Pagination**](Pagination) |  | 

## Examples

- Prepare the resource
```powershell
$PageTableData = Initialize-maislurp-client-powershellPageTableData  -Headers null `
 -Rows null `
 -Pagination null
```

- Convert the resource to JSON
```powershell
$PageTableData | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

