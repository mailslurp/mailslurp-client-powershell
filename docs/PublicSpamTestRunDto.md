# PublicSpamTestRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Source** | **String** |  | 
**Status** | **String** |  | [optional] 
**ReportStatus** | **String** |  | [optional] 
**RequestedSegment** | **String** |  | [optional] 
**SeedlistProfile** | **String** |  | [optional] 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**TrackingToken** | **String** |  | [optional] 
**SeedAddresses** | **String[]** |  | 
**SeedAddressFormats** | **System.Collections.Hashtable** |  | 
**TotalTargets** | **Int32** |  | 
**MatchedTargets** | **Int32** |  | 
**InboxTargets** | **Int32** |  | 
**SpamTargets** | **Int32** |  | 
**NotReceivedTargets** | **Int32** |  | 
**SubmittedAt** | **System.DateTime** |  | [optional] 
**StartedAt** | **System.DateTime** |  | [optional] 
**FirstMatchAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**LastEventAt** | **System.DateTime** |  | [optional] 
**LastSyncedAt** | **System.DateTime** |  | [optional] 
**FreeLimitReached** | **Boolean** |  | 
**ErrorCode** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PublicSpamTestRunDto = Initialize-maislurp-client-powershellPublicSpamTestRunDto  -Id null `
 -Source null `
 -Status null `
 -ReportStatus null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SenderDomain null `
 -FromEmail null `
 -TrackingToken null `
 -SeedAddresses null `
 -SeedAddressFormats null `
 -TotalTargets null `
 -MatchedTargets null `
 -InboxTargets null `
 -SpamTargets null `
 -NotReceivedTargets null `
 -SubmittedAt null `
 -StartedAt null `
 -FirstMatchAt null `
 -CompletedAt null `
 -ExpiresAt null `
 -LastEventAt null `
 -LastSyncedAt null `
 -FreeLimitReached null `
 -ErrorCode null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PublicSpamTestRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

