# PageWebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**WebhookProjection[]**](WebhookProjection) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**TotalPages** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**Last** | **Boolean** |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageWebhookProjection = Initialize-maislurp-client-powershellPageWebhookProjection  -Content null `
 -Pageable null `
 -TotalPages null `
 -TotalElements null `
 -Last null `
 -First null `
 -Size null `
 -Number null `
 -Sort null `
 -NumberOfElements null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageWebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

