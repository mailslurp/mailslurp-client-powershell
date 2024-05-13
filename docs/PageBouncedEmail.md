# PageBouncedEmail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**BounceProjection[]**](BounceProjection) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**TotalPages** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**Last** | **Boolean** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageBouncedEmail = Initialize-maislurp-client-powershellPageBouncedEmail  -Content null `
 -Pageable null `
 -TotalPages null `
 -TotalElements null `
 -Last null `
 -NumberOfElements null `
 -Size null `
 -Number null `
 -Sort null `
 -First null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageBouncedEmail | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

