# DevicePreviewRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunId** | **String** |  | 
**EmailId** | **String** |  | 
**Status** | **String** |  | 
**PrimaryScreenshotId** | **String** |  | [optional] 
**RequestedProviders** | **String[]** |  | [optional] 
**ImportedProviders** | **String[]** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 
**ProviderMessageIds** | **System.Collections.Hashtable** |  | [optional] 
**TargetCount** | **Int64** |  | 
**ScreenshotCount** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewRunDto = Initialize-maislurp-client-powershellDevicePreviewRunDto  -RunId null `
 -EmailId null `
 -Status null `
 -PrimaryScreenshotId null `
 -RequestedProviders null `
 -ImportedProviders null `
 -Warnings null `
 -ProviderMessageIds null `
 -TargetCount null `
 -ScreenshotCount null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

