# InboxPlacementAnalyticsRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**RemoteTestId** | **String** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**ReportStatus** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**StartedAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**TotalTargets** | **Int32** |  | 
**MatchedTargets** | **Int32** |  | 
**DeliveredTargets** | **Int32** |  | 
**InboxTargets** | **Int32** |  | 
**SpamTargets** | **Int32** |  | 
**PromotionTargets** | **Int32** |  | 
**SocialTargets** | **Int32** |  | 
**UpdateTargets** | **Int32** |  | 
**ForumTargets** | **Int32** |  | 
**OtherFolderTargets** | **Int32** |  | 
**NotReceivedTargets** | **Int32** |  | 
**DeliveredRatePercentage** | **Double** |  | 
**InboxRatePercentage** | **Double** |  | 
**SpamRatePercentage** | **Double** |  | 
**PromotionRatePercentage** | **Double** |  | 
**NotReceivedRatePercentage** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalyticsRunDto = Initialize-maislurp-client-powershellInboxPlacementAnalyticsRunDto  -Id null `
 -RemoteTestId null `
 -SenderDomain null `
 -FromEmail null `
 -Status null `
 -ReportStatus null `
 -CreatedAt null `
 -StartedAt null `
 -CompletedAt null `
 -TotalTargets null `
 -MatchedTargets null `
 -DeliveredTargets null `
 -InboxTargets null `
 -SpamTargets null `
 -PromotionTargets null `
 -SocialTargets null `
 -UpdateTargets null `
 -ForumTargets null `
 -OtherFolderTargets null `
 -NotReceivedTargets null `
 -DeliveredRatePercentage null `
 -InboxRatePercentage null `
 -SpamRatePercentage null `
 -PromotionRatePercentage null `
 -NotReceivedRatePercentage null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalyticsRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

