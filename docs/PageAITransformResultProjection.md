# PageAITransformResultProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**AITransformResultProjectionDto[]**](AITransformResultProjectionDto) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Columns** | **String[]** |  | 
**TotalPages** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**Last** | **Boolean** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAITransformResultProjection = Initialize-maislurp-client-powershellPageAITransformResultProjection  -Content null `
 -Pageable null `
 -Columns null `
 -TotalPages null `
 -TotalElements null `
 -Last null `
 -Size null `
 -Number null `
 -NumberOfElements null `
 -Sort null `
 -First null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageAITransformResultProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

