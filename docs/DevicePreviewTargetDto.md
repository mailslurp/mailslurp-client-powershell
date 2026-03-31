# DevicePreviewTargetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**RunId** | **String** |  | 
**Provider** | **String** |  | [optional] 
**ClientProfile** | **String** |  | [optional] 
**DeviceType** | **String** |  | [optional] 
**BrowserFamily** | **String** |  | [optional] 
**Platform** | **String** |  | [optional] 
**ColorScheme** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**FailureCode** | **String** |  | [optional] 
**PrimaryScreenshotId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewTargetDto = Initialize-maislurp-client-powershellDevicePreviewTargetDto  -Id null `
 -RunId null `
 -Provider null `
 -ClientProfile null `
 -DeviceType null `
 -BrowserFamily null `
 -Platform null `
 -ColorScheme null `
 -Status null `
 -FailureCode null `
 -PrimaryScreenshotId null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewTargetDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

