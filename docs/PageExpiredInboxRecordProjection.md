# PageExpiredInboxRecordProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ExpiredInboxRecordProjection[]**](ExpiredInboxRecordProjection) |  | [optional] 
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
$PageExpiredInboxRecordProjection = Initialize-maislurp-client-powershellPageExpiredInboxRecordProjection  -Content null `
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
$PageExpiredInboxRecordProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

