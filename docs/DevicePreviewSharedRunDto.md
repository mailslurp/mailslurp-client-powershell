# DevicePreviewSharedRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunId** | **String** |  | 
**SourceType** | **String** |  | 
**SourceAlias** | **String** |  | [optional] 
**SourceSubject** | **String** |  | [optional] 
**SourceFrom** | **String** |  | [optional] 
**SourceTo** | **String[]** |  | [optional] 
**SourceRecipientEmailAddress** | **String** |  | [optional] 
**SourceRecipientLocalPart** | **String** |  | [optional] 
**SourceProfileLocalPart** | **String** |  | [optional] 
**SourceProfileDisplayName** | **String** |  | [optional] 
**Status** | **String** |  | 
**PrimaryScreenshotId** | **String** |  | [optional] 
**TargetCount** | **Int64** |  | 
**ScreenshotCount** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewSharedRunDto = Initialize-maislurp-client-powershellDevicePreviewSharedRunDto  -RunId null `
 -SourceType null `
 -SourceAlias null `
 -SourceSubject null `
 -SourceFrom null `
 -SourceTo null `
 -SourceRecipientEmailAddress null `
 -SourceRecipientLocalPart null `
 -SourceProfileLocalPart null `
 -SourceProfileDisplayName null `
 -Status null `
 -PrimaryScreenshotId null `
 -TargetCount null `
 -ScreenshotCount null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewSharedRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

