# InboxPlacementRemoteTestSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestId** | **String** |  | 
**Mode** | **String** |  | 
**Status** | **String** |  | 
**ReportStatus** | **String** |  | 
**RequestedSegment** | **String** |  | 
**SeedlistProfile** | **String** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**SubjectHint** | **String** |  | [optional] 
**StartedAt** | **System.DateTime** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxPlacementRemoteTestSummaryDto = Initialize-maislurp-client-powershellInboxPlacementRemoteTestSummaryDto  -TestId null `
 -Mode null `
 -Status null `
 -ReportStatus null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SenderDomain null `
 -FromEmail null `
 -SubjectHint null `
 -StartedAt null `
 -ExpiresAt null
```

- Convert the resource to JSON
```powershell
$InboxPlacementRemoteTestSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

