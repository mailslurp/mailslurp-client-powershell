# DevicePreviewEmailSubmissionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**IngestDomainId** | **String** |  | [optional] 
**ProfileId** | **String** |  | [optional] 
**RunId** | **String** |  | [optional] 
**RecipientEmailAddress** | **String** |  | 
**RecipientLocalPart** | **String** |  | 
**MatchedProfile** | **Boolean** |  | 
**Status** | **String** |  | 
**SourceExternalId** | **String** |  | [optional] 
**SourceFrom** | **String** |  | [optional] 
**SourceTo** | **String[]** |  | [optional] 
**SourceSubject** | **String** |  | [optional] 
**SourceMessageId** | **String** |  | [optional] 
**SourceSizeBytes** | **Int64** |  | [optional] 
**FailureStage** | **String** |  | [optional] 
**FailureCode** | **String** |  | [optional] 
**LatestError** | **String** |  | [optional] 
**ReceivedAt** | **System.DateTime** |  | 
**ProcessingStartedAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewEmailSubmissionDto = Initialize-maislurp-client-powershellDevicePreviewEmailSubmissionDto  -Id null `
 -UserId null `
 -IngestDomainId null `
 -ProfileId null `
 -RunId null `
 -RecipientEmailAddress null `
 -RecipientLocalPart null `
 -MatchedProfile null `
 -Status null `
 -SourceExternalId null `
 -SourceFrom null `
 -SourceTo null `
 -SourceSubject null `
 -SourceMessageId null `
 -SourceSizeBytes null `
 -FailureStage null `
 -FailureCode null `
 -LatestError null `
 -ReceivedAt null `
 -ProcessingStartedAt null `
 -CompletedAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewEmailSubmissionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

