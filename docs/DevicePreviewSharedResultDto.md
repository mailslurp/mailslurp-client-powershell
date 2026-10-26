# DevicePreviewSharedResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Share** | [**DevicePreviewShareLinkDto**](DevicePreviewShareLinkDto) |  | 
**Run** | [**DevicePreviewSharedRunDto**](DevicePreviewSharedRunDto) |  | 
**Targets** | [**DevicePreviewSharedTargetDto[]**](DevicePreviewSharedTargetDto) |  | 
**Screenshots** | [**DevicePreviewSharedScreenshotDto[]**](DevicePreviewSharedScreenshotDto) |  | 
**Comments** | [**DevicePreviewSharedCommentDto[]**](DevicePreviewSharedCommentDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewSharedResultDto = Initialize-maislurp-client-powershellDevicePreviewSharedResultDto  -Share null `
 -Run null `
 -Targets null `
 -Screenshots null `
 -Comments null
```

- Convert the resource to JSON
```powershell
$DevicePreviewSharedResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

