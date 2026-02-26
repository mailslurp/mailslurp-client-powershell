# PageableObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageSize** | **Int32** |  | [optional] 
**Paged** | **Boolean** |  | [optional] 
**PageNumber** | **Int32** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**Unpaged** | **Boolean** |  | [optional] 
**Offset** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageableObject = Initialize-maislurp-client-powershellPageableObject  -PageSize null `
 -Paged null `
 -PageNumber null `
 -Sort null `
 -Unpaged null `
 -Offset null
```

- Convert the resource to JSON
```powershell
$PageableObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

