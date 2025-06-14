# PageAITransformProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**AITransformProjection[]**](AITransformProjection) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 
**Last** | **Boolean** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAITransformProjection = Initialize-maislurp-client-powershellPageAITransformProjection  -Content null `
 -Pageable null `
 -TotalElements null `
 -TotalPages null `
 -Last null `
 -NumberOfElements null `
 -First null `
 -Size null `
 -Number null `
 -Sort null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageAITransformProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

