# InboxPlacementPublicTestRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Status** | **String** |  | [optional] 
**ReportStatus** | **String** |  | [optional] 
**RequestedSegment** | **String** |  | [optional] 
**SeedlistProfile** | **String** |  | [optional] 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**SubjectHint** | **String** |  | [optional] 
**TotalTargets** | **Int32** |  | 
**MatchedTargets** | **Int32** |  | 
**InboxTargets** | **Int32** |  | 
**SpamTargets** | **Int32** |  | 
**NotReceivedTargets** | **Int32** |  | 
**StartedAt** | **System.DateTime** |  | [optional] 
**FirstMatchAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementPublicTestRunDto = Initialize-maislurp-client-powershellInboxPlacementPublicTestRunDto  -Id null `
 -Status null `
 -ReportStatus null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SenderDomain null `
 -FromEmail null `
 -SubjectHint null `
 -TotalTargets null `
 -MatchedTargets null `
 -InboxTargets null `
 -SpamTargets null `
 -NotReceivedTargets null `
 -StartedAt null `
 -FirstMatchAt null `
 -CompletedAt null `
 -ExpiresAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$InboxPlacementPublicTestRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

