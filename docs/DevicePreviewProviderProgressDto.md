# DevicePreviewProviderProgressDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**DevicePreviewRunDto**](DevicePreviewRunDto) |  | 
**Provider** | **String** |  | 
**Status** | **String** |  | 
**TargetCount** | **Int64** |  | 
**ReadyCount** | **Int64** |  | 
**FailedCount** | **Int64** |  | 
**CapturingCount** | **Int64** |  | 
**PendingCount** | **Int64** |  | 
**Targets** | [**DevicePreviewTargetDto[]**](DevicePreviewTargetDto) |  | 
**Screenshots** | [**DevicePreviewScreenshotDto[]**](DevicePreviewScreenshotDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewProviderProgressDto = Initialize-maislurp-client-powershellDevicePreviewProviderProgressDto  -Run null `
 -Provider null `
 -Status null `
 -TargetCount null `
 -ReadyCount null `
 -FailedCount null `
 -CapturingCount null `
 -PendingCount null `
 -Targets null `
 -Screenshots null
```

- Convert the resource to JSON
```powershell
$DevicePreviewProviderProgressDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

