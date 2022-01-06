# PageMissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**MissedEmailProjection[]**](MissedEmailProjection) |  | [optional] 
**Pageable** | [**Pageable**](Pageable) |  | [optional] 
**Last** | **Boolean** |  | [optional] 
**TotalPages** | **Int32** |  | [optional] 
**TotalElements** | **Int64** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**First** | **Boolean** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageMissedEmailProjection = Initialize-maislurp-client-powershellPageMissedEmailProjection  -Content null `
 -Pageable null `
 -Last null `
 -TotalPages null `
 -TotalElements null `
 -Size null `
 -Number null `
 -Sort null `
 -First null `
 -NumberOfElements null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageMissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

