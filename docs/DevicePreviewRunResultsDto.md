# DevicePreviewRunResultsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**DevicePreviewRunDto**](DevicePreviewRunDto) |  | 
**Targets** | [**DevicePreviewTargetDto[]**](DevicePreviewTargetDto) |  | 
**Screenshots** | [**DevicePreviewScreenshotDto[]**](DevicePreviewScreenshotDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewRunResultsDto = Initialize-maislurp-client-powershellDevicePreviewRunResultsDto  -Run null `
 -Targets null `
 -Screenshots null
```

- Convert the resource to JSON
```powershell
$DevicePreviewRunResultsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

