# DeliverabilitySimulationJobErrorSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastError** | **String** |  | [optional] 
**TopErrors** | [**DeliverabilitySimulationJobTopErrorDto[]**](DeliverabilitySimulationJobTopErrorDto) |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationJobErrorSummaryDto = Initialize-maislurp-client-powershellDeliverabilitySimulationJobErrorSummaryDto  -LastError null `
 -TopErrors null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationJobErrorSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

