# PageBouncedRecipients
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**BounceRecipientProjection[]**](BounceRecipientProjection) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**Last** | **Boolean** |  | [optional] 
**TotalElements** | **Int64** |  | [optional] 
**TotalPages** | **Int32** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**First** | **Boolean** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageBouncedRecipients = Initialize-maislurp-client-powershellPageBouncedRecipients  -Content null `
 -Pageable null `
 -Total null `
 -Last null `
 -TotalElements null `
 -TotalPages null `
 -Size null `
 -Number null `
 -Sort null `
 -First null `
 -NumberOfElements null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageBouncedRecipients | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

