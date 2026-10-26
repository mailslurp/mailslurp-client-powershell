# DevicePreviewSharedCommentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommentId** | **String** |  | 
**TargetId** | **String** |  | [optional] 
**ScreenshotId** | **String** |  | [optional] 
**Status** | **String** |  | 
**AuthorLabel** | **String** |  | [optional] 
**TargetLabel** | **String** |  | [optional] 
**Comment** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePreviewSharedCommentDto = Initialize-maislurp-client-powershellDevicePreviewSharedCommentDto  -CommentId null `
 -TargetId null `
 -ScreenshotId null `
 -Status null `
 -AuthorLabel null `
 -TargetLabel null `
 -Comment null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewSharedCommentDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

