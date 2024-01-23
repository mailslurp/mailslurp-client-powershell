# PageSentEmailWithQueueProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SendWithQueueResult[]**](SendWithQueueResult) | Collection of items | 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**NumberOfElements** | **Int32** | Number of items returned | 
**TotalElements** | **Int64** | Total number of items available for querying | 
**TotalPages** | **Int32** | Total number of pages available | 
**Size** | **Int32** | Size of page requested | 
**Number** | **Int32** | Page number starting at 0 | 
**Last** | **Boolean** |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageSentEmailWithQueueProjection = Initialize-maislurp-client-powershellPageSentEmailWithQueueProjection  -Content null `
 -Pageable null `
 -Total null `
 -NumberOfElements null `
 -TotalElements null `
 -TotalPages null `
 -Size null `
 -Number null `
 -Last null `
 -First null `
 -Sort null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageSentEmailWithQueueProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

