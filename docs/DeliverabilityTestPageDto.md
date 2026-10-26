# DeliverabilityTestPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**DeliverabilityTestDto[]**](DeliverabilityTestDto) |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityTestPageDto = Initialize-maislurp-client-powershellDeliverabilityTestPageDto  -Content null `
 -Page null `
 -Size null `
 -TotalElements null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$DeliverabilityTestPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

