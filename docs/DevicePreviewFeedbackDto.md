# DevicePreviewFeedbackDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FeedbackId** | **String** |  | 
**UserId** | **String** |  | 
**Source** | **String** |  | 
**Category** | **String** |  | 
**Status** | **String** |  | 
**Rating** | **Int32** |  | [optional] 
**RunId** | **String** |  | [optional] 
**TargetId** | **String** |  | [optional] 
**ScreenshotId** | **String** |  | [optional] 
**Provider** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Comment** | **String** |  | [optional] 
**InternalNote** | **String** |  | [optional] 
**SessionId** | **String** |  | [optional] 
**LiveViewUrl** | **String** |  | [optional] 
**Metadata** | **System.Collections.Hashtable** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePreviewFeedbackDto = Initialize-maislurp-client-powershellDevicePreviewFeedbackDto  -FeedbackId null `
 -UserId null `
 -Source null `
 -Category null `
 -Status null `
 -Rating null `
 -RunId null `
 -TargetId null `
 -ScreenshotId null `
 -Provider null `
 -Title null `
 -Comment null `
 -InternalNote null `
 -SessionId null `
 -LiveViewUrl null `
 -Metadata null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewFeedbackDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

