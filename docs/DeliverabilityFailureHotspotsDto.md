# DeliverabilityFailureHotspotsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**Scope** | **String** |  | [optional] 
**EntityHotspots** | [**DeliverabilityFailureEntityHotspotDto[]**](DeliverabilityFailureEntityHotspotDto) |  | 
**PhoneDimensionHotspots** | [**DeliverabilityFailurePhoneDimensionHotspotDto[]**](DeliverabilityFailurePhoneDimensionHotspotDto) |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityFailureHotspotsDto = Initialize-maislurp-client-powershellDeliverabilityFailureHotspotsDto  -Since null `
 -Before null `
 -Scope null `
 -EntityHotspots null `
 -PhoneDimensionHotspots null
```

- Convert the resource to JSON
```powershell
$DeliverabilityFailureHotspotsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

