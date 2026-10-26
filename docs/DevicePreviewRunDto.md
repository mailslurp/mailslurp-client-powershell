# DevicePreviewRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunId** | **String** |  | 
**EmailId** | **String** |  | [optional] 
**SourceType** | **String** |  | 
**SourceInboxId** | **String** |  | [optional] 
**SourceAlias** | **String** |  | [optional] 
**SourceExternalId** | **String** |  | [optional] 
**SourceFrom** | **String** |  | [optional] 
**SourceTo** | **String[]** |  | [optional] 
**SourceSubject** | **String** |  | [optional] 
**SourceMessageId** | **String** |  | [optional] 
**SourceSizeBytes** | **Int64** |  | [optional] 
**SourceStorageProvider** | **String** |  | [optional] 
**SourceStorageBucket** | **String** |  | [optional] 
**SourceStorageObjectKey** | **String** |  | [optional] 
**SourceStorageRegion** | **String** |  | [optional] 
**SourceStorageEndpoint** | **String** |  | [optional] 
**SourceStoragePublicBaseUrl** | **String** |  | [optional] 
**SourceRecipientEmailAddress** | **String** |  | [optional] 
**SourceRecipientLocalPart** | **String** |  | [optional] 
**SourceIngestDomainId** | **String** |  | [optional] 
**SourceProfileId** | **String** |  | [optional] 
**SourceProfileLocalPart** | **String** |  | [optional] 
**SourceProfileDisplayName** | **String** |  | [optional] 
**Status** | **String** |  | 
**PrimaryScreenshotId** | **String** |  | [optional] 
**RequestedProviders** | **String[]** |  | [optional] 
**ImportedProviders** | **String[]** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 
**ProviderMessageIds** | **System.Collections.Hashtable** |  | [optional] 
**LatestError** | **String** | Latest run-level error, if the preview run was blocked or failed after creation. | [optional] 
**TargetCount** | **Int64** |  | 
**ScreenshotCount** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Thumbnail** | [**DevicePreviewRunThumbnailDto**](DevicePreviewRunThumbnailDto) |  | [optional] 
**QaBundle** | [**DevicePreviewQaBundleDto**](DevicePreviewQaBundleDto) |  | [optional] 
**FolderId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePreviewRunDto = Initialize-maislurp-client-powershellDevicePreviewRunDto  -RunId null `
 -EmailId null `
 -SourceType null `
 -SourceInboxId null `
 -SourceAlias null `
 -SourceExternalId null `
 -SourceFrom null `
 -SourceTo null `
 -SourceSubject null `
 -SourceMessageId null `
 -SourceSizeBytes null `
 -SourceStorageProvider null `
 -SourceStorageBucket null `
 -SourceStorageObjectKey null `
 -SourceStorageRegion null `
 -SourceStorageEndpoint null `
 -SourceStoragePublicBaseUrl null `
 -SourceRecipientEmailAddress null `
 -SourceRecipientLocalPart null `
 -SourceIngestDomainId null `
 -SourceProfileId null `
 -SourceProfileLocalPart null `
 -SourceProfileDisplayName null `
 -Status null `
 -PrimaryScreenshotId null `
 -RequestedProviders null `
 -ImportedProviders null `
 -Warnings null `
 -ProviderMessageIds null `
 -LatestError null `
 -TargetCount null `
 -ScreenshotCount null `
 -CreatedAt null `
 -UpdatedAt null `
 -Thumbnail null `
 -QaBundle null `
 -FolderId null
```

- Convert the resource to JSON
```powershell
$DevicePreviewRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

