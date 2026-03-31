# DevicePreviewScreenshotDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScreenshotId** | **String** |  | 
**RunId** | **String** |  | 
**TargetId** | **String** |  | [optional] 
**Variant** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**IsPrimary** | **Boolean** |  | 
**DisplayOrder** | **Int32** |  | 
**StorageKey** | **String** |  | [optional] 
**AccessUrl** | **String** |  | [optional] 
**LiveViewUrl** | **String** |  | [optional] 
**SessionId** | **String** |  | [optional] 
**BrowserContextId** | **String** |  | [optional] 
**DeepLinkUrl** | **String** |  | [optional] 
**Width** | **Int32** |  | [optional] 
**Height** | **Int32** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewScreenshotDto = Initialize-maislurp-client-powershellDevicePreviewScreenshotDto  -ScreenshotId null `
 -RunId null `
 -TargetId null `
 -Variant null `
 -Title null `
 -Description null `
 -IsPrimary null `
 -DisplayOrder null `
 -StorageKey null `
 -AccessUrl null `
 -LiveViewUrl null `
 -SessionId null `
 -BrowserContextId null `
 -DeepLinkUrl null `
 -Width null `
 -Height null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewScreenshotDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

