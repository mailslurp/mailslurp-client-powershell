# CreateDevicePreviewFeedbackOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | **String** |  | 
**Category** | **String** |  | 
**Status** | **String** |  | [optional] 
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

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewFeedbackOptions = Initialize-maislurp-client-powershellCreateDevicePreviewFeedbackOptions  -Source null `
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
 -Metadata null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewFeedbackOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

