# PublicDeviceRenderTargetDto
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

## Examples

- Prepare the resource
```powershell
$PublicDeviceRenderTargetDto = Initialize-maislurp-client-powershellPublicDeviceRenderTargetDto  -Target null `
 -BaseTarget null `
 -Provider null `
 -Client null `
 -Surface null `
 -Platform null `
 -FormFactor null `
 -Engine null `
 -Appearance null
```

- Convert the resource to JSON
```powershell
$PublicDeviceRenderTargetDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

