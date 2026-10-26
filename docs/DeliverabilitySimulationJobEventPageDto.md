# DeliverabilitySimulationJobEventPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Job** | [**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto) |  | 
**Content** | [**DeliverabilitySimulationJobEventDto[]**](DeliverabilitySimulationJobEventDto) |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationJobEventPageDto = Initialize-maislurp-client-powershellDeliverabilitySimulationJobEventPageDto  -Job null `
 -Content null `
 -Page null `
 -Size null `
 -TotalElements null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationJobEventPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

