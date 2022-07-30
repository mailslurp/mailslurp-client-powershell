# PageDeliveryStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**DeliveryStatusDto[]**](DeliveryStatusDto) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Total** | **Int64** |  | [optional] 
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
$PageDeliveryStatus = Initialize-maislurp-client-powershellPageDeliveryStatus  -Content null `
 -Pageable null `
 -Total null `
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
$PageDeliveryStatus | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

