# DevicePreviewNativeTargetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Target** | **String** |  | 
**BaseTarget** | **String** |  | 
**Provider** | **String** |  | [optional] 
**Client** | **String** |  | 
**Surface** | **String** |  | 
**Platform** | **String** |  | 
**FormFactor** | **String** |  | 
**Engine** | **String** |  | 
**Appearance** | **String** |  | 
**CreditCost** | **Int64** |  | 
**Tier** | **String** |  | 
**TimeoutSeconds** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewNativeTargetDto = Initialize-maislurp-client-powershellDevicePreviewNativeTargetDto  -Target null `
 -BaseTarget null `
 -Provider null `
 -Client null `
 -Surface null `
 -Platform null `
 -FormFactor null `
 -Engine null `
 -Appearance null `
 -CreditCost null `
 -Tier null `
 -TimeoutSeconds null
```

- Convert the resource to JSON
```powershell
$DevicePreviewNativeTargetDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

