# PageableObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int64** |  | [optional] 
**Sort** | [**Sort**](Sort) |  | [optional] 
**Paged** | **Boolean** |  | [optional] 
**Unpaged** | **Boolean** |  | [optional] 
**PageNumber** | **Int32** |  | [optional] 
**PageSize** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageableObject = Initialize-maislurp-client-powershellPageableObject  -Offset null `
 -Sort null `
 -Paged null `
 -Unpaged null `
 -PageNumber null `
 -PageSize null
```

- Convert the resource to JSON
```powershell
$PageableObject | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

