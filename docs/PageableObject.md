# PageableObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageSize** | **Int32** |  | [optional] 
**Paged** | **Boolean** |  | [optional] 
**PageNumber** | **Int32** |  | [optional] 
**Unpaged** | **Boolean** |  | [optional] 
**Offset** | **Int64** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageableObject = Initialize-maislurp-client-powershellPageableObject  -PageSize null `
 -Paged null `
 -PageNumber null `
 -Unpaged null `
 -Offset null `
 -Sort null
```

- Convert the resource to JSON
```powershell
$PageableObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

