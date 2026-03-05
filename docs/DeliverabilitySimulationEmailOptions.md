# DeliverabilitySimulationEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromOverride** | **String** | Optional from override for each sent email | [optional] 
**Subject** | **String** | Optional email subject fallback used when template subject is omitted | [optional] 
**BodyTemplate** | **String** | Optional email body template. Supports {{targetLabel}}, {{sendIndex}}, {{attempt}}. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationEmailOptions = Initialize-maislurp-client-powershellDeliverabilitySimulationEmailOptions  -FromOverride null `
 -Subject null `
 -BodyTemplate null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

