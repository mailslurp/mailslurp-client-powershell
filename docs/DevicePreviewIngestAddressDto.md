# DevicePreviewIngestAddressDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SessionId** | **String** |  | 
**EmailAddress** | **String** |  | 
**Status** | **String** |  | 
**RunId** | **String** |  | [optional] 
**SourceFrom** | **String** |  | [optional] 
**SourceTo** | **String[]** |  | [optional] 
**SourceSubject** | **String** |  | [optional] 
**SourceMessageId** | **String** |  | [optional] 
**SourceSizeBytes** | **Int64** |  | [optional] 
**LatestError** | **String** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewIngestAddressDto = Initialize-maislurp-client-powershellDevicePreviewIngestAddressDto  -SessionId null `
 -EmailAddress null `
 -Status null `
 -RunId null `
 -SourceFrom null `
 -SourceTo null `
 -SourceSubject null `
 -SourceMessageId null `
 -SourceSizeBytes null `
 -LatestError null `
 -ExpiresAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewIngestAddressDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

