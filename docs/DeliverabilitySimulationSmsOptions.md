# DeliverabilitySimulationSmsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BodyTemplate** | **String** | Optional SMS body template. Supports {{targetLabel}}, {{sendIndex}}, {{attempt}}. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationSmsOptions = Initialize-maislurp-client-powershellDeliverabilitySimulationSmsOptions  -BodyTemplate null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationSmsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

