# DevicePreviewRunThumbnailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScreenshotId** | **String** |  | 
**AccessUrl** | **String** |  | 
**Width** | **Int32** |  | [optional] 
**Height** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePreviewRunThumbnailDto = Initialize-maislurp-client-powershellDevicePreviewRunThumbnailDto  -ScreenshotId null `
 -AccessUrl null `
 -Width null `
 -Height null
```

- Convert the resource to JSON
```powershell
$DevicePreviewRunThumbnailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

