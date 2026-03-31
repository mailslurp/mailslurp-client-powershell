# PageableObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int64** |  | [optional] 
**PageSize** | **Int32** |  | [optional] 
**Unpaged** | **Boolean** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**Paged** | **Boolean** |  | [optional] 
**PageNumber** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageableObject = Initialize-maislurp-client-powershellPageableObject  -Offset null `
 -PageSize null `
 -Unpaged null `
 -Sort null `
 -Paged null `
 -PageNumber null
```

- Convert the resource to JSON
```powershell
$PageableObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

