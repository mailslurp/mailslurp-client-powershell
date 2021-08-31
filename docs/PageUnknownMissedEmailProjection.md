# PageUnknownMissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**UnknownMissedEmailProjection[]**](UnknownMissedEmailProjection) |  | [optional] 
**Empty** | **Boolean** |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Last** | **Boolean** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**Pageable** | [**Pageable**](Pageable) |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**TotalElements** | **Int64** |  | [optional] 
**TotalPages** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageUnknownMissedEmailProjection = Initialize-maislurp-client-powershellPageUnknownMissedEmailProjection  -Content null `
 -Empty null `
 -First null `
 -Last null `
 -Number null `
 -NumberOfElements null `
 -Pageable null `
 -Size null `
 -Sort null `
 -TotalElements null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$PageUnknownMissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)
