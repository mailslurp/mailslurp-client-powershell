# PageInboxForwarderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**InboxForwarderDto[]**](InboxForwarderDto) |  | [optional] 
**Pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**TotalElements** | **Int64** |  | [optional] 
**TotalPages** | **Int32** |  | [optional] 
**Last** | **Boolean** |  | [optional] 
**NumberOfElements** | **Int32** |  | [optional] 
**First** | **Boolean** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Sort** | [**SortObject**](SortObject) |  | [optional] 
**Empty** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageInboxForwarderDto = Initialize-maislurp-client-powershellPageInboxForwarderDto  -Content null `
 -Pageable null `
 -Total null `
 -TotalElements null `
 -TotalPages null `
 -Last null `
 -NumberOfElements null `
 -First null `
 -Size null `
 -Number null `
 -Sort null `
 -Empty null
```

- Convert the resource to JSON
```powershell
$PageInboxForwarderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

