# SortObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sorted** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 
**Unsorted** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SortObject = Initialize-maislurp-client-powershellSortObject  -Sorted null `
 -Empty null `
 -Unsorted null
```

- Convert the resource to JSON
```powershell
$SortObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

