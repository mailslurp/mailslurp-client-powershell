# Pageable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int64** |  | [optional] 
**PageNumber** | **Int32** |  | [optional] 
**PageSize** | **Int32** |  | [optional] 
**Paged** | **Boolean** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**Unpaged** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Pageable = Initialize-maislurp-client-powershellPageable  -Offset null `
 -PageNumber null `
 -PageSize null `
 -Paged null `
 -Sort null `
 -Unpaged null
```

- Convert the resource to JSON
```powershell
$Pageable | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

