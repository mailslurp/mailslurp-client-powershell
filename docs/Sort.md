# Sort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Empty** | **Boolean** |  | [optional] 
**Sorted** | **Boolean** |  | [optional] 
**Unsorted** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Sort = Initialize-maislurp-client-powershellSort  -Empty null `
 -Sorted null `
 -Unsorted null
```

- Convert the resource to JSON
```powershell
$Sort | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

