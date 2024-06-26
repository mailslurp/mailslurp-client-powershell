# PageableObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageNumber** | **Int32** |  | [optional] 
**PageSize** | **Int32** |  | [optional] 
**Unpaged** | **Boolean** |  | [optional] 
**Paged** | **Boolean** |  | [optional] 
**Offset** | **Int64** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageableObject = Initialize-maislurp-client-powershellPageableObject  -PageNumber null `
 -PageSize null `
 -Unpaged null `
 -Paged null `
 -Offset null `
 -Sort null
```

- Convert the resource to JSON
```powershell
$PageableObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

