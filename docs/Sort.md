# Sort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Empty** | **Boolean** |  | [optional] 
**Unsorted** | **Boolean** |  | [optional] 
**Sorted** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Sort = Initialize-maislurp-client-powershellSort  -Empty null `
 -Unsorted null `
 -Sorted null
```

- Convert the resource to JSON
```powershell
$Sort | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

