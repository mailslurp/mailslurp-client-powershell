# EmailWarmupSendSlotPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**EmailWarmupSendSlotDto[]**](EmailWarmupSendSlotDto) |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupSendSlotPageDto = Initialize-maislurp-client-powershellEmailWarmupSendSlotPageDto  -Content null `
 -Page null `
 -Size null `
 -TotalElements null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$EmailWarmupSendSlotPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

