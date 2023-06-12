# PageTrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**TrackingPixelProjection[]**](TrackingPixelProjection) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**TotalElements** | **Int64** |  | [optional] 
**TotalPages** | **Int32** |  | [optional] 
**Last** | **Boolean** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageTrackingPixelProjection = Initialize-maislurp-client-powershellPageTrackingPixelProjection  -Content null `
 -Pageable null `
 -Total null `
 -TotalElements null `
 -TotalPages null `
 -Last null `
 -Size null `
 -Number null `
 -Sort null `
 -NumberOfElements null `
 -First null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageTrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

