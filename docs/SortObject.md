# SortObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Unsorted** | **Boolean** |  | [optional] 
**Sorted** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SortObject = Initialize-maislurp-client-powershellSortObject  -Unsorted null `
 -Sorted null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$SortObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

