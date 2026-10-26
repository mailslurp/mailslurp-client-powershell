# EmailWarmupProgramPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**EmailWarmupProgramDto[]**](EmailWarmupProgramDto) |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupProgramPageDto = Initialize-maislurp-client-powershellEmailWarmupProgramPageDto  -Content null `
 -Page null `
 -Size null `
 -TotalElements null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$EmailWarmupProgramPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

