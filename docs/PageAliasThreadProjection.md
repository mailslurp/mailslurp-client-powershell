# PageAliasThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**AliasThreadProjection[]**](AliasThreadProjection) |  | [optional] 
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
$PageAliasThreadProjection = Initialize-maislurp-client-powershellPageAliasThreadProjection  -Content null `
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
$PageAliasThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

