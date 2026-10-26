# InboxPlacementTestRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**RemoteTestId** | **String** |  | 
**Mode** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**ReportStatus** | **String** |  | [optional] 
**RequestedSegment** | **String** |  | [optional] 
**SeedlistProfile** | **String** |  | [optional] 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**SubjectHint** | **String** |  | [optional] 
**TrackingToken** | **String** |  | [optional] 
**SeedAddresses** | **String[]** |  | 
**SeedAddressFormats** | **System.Collections.Hashtable** |  | 
**TotalTargets** | **Int32** |  | 
**MatchedTargets** | **Int32** |  | 
**InboxTargets** | **Int32** |  | 
**SpamTargets** | **Int32** |  | 
**NotReceivedTargets** | **Int32** |  | 
**StartedAt** | **System.DateTime** |  | [optional] 
**FirstMatchAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**LastEventAt** | **System.DateTime** |  | [optional] 
**LastSyncedAt** | **System.DateTime** |  | [optional] 
**BilledAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementTestRunDto = Initialize-maislurp-client-powershellInboxPlacementTestRunDto  -Id null `
 -RemoteTestId null `
 -Mode null `
 -Status null `
 -ReportStatus null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SenderDomain null `
 -FromEmail null `
 -SubjectHint null `
 -TrackingToken null `
 -SeedAddresses null `
 -SeedAddressFormats null `
 -TotalTargets null `
 -MatchedTargets null `
 -InboxTargets null `
 -SpamTargets null `
 -NotReceivedTargets null `
 -StartedAt null `
 -FirstMatchAt null `
 -CompletedAt null `
 -ExpiresAt null `
 -LastEventAt null `
 -LastSyncedAt null `
 -BilledAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$InboxPlacementTestRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

