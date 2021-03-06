# PageSentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SentEmailProjection[]**](SentEmailProjection) | Collection of items | 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**Size** | **Int32** | Size of page requested | 
**Number** | **Int32** | Page number starting at 0 | 
**NumberOfElements** | **Int32** | Number of items returned | 
**TotalElements** | **Int64** | Total number of items available for querying | 
**TotalPages** | **Int32** | Total number of pages available | 
**Last** | **Boolean** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageSentEmailProjection = Initialize-maislurp-client-powershellPageSentEmailProjection  -Content null `
 -Pageable null `
 -Total null `
 -Size null `
 -Number null `
 -NumberOfElements null `
 -TotalElements null `
 -TotalPages null `
 -Last null `
 -Sort null `
 -First null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageSentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

