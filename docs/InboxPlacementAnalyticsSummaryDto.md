# InboxPlacementAnalyticsSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalRuns** | **Int64** |  | 
**CompletedRuns** | **Int64** |  | 
**ActiveRuns** | **Int64** |  | 
**FailedRuns** | **Int64** |  | 
**TotalTargets** | **Int64** |  | 
**MatchedTargets** | **Int64** |  | 
**DeliveredTargets** | **Int64** |  | 
**InboxTargets** | **Int64** |  | 
**SpamTargets** | **Int64** |  | 
**PromotionTargets** | **Int64** |  | 
**SocialTargets** | **Int64** |  | 
**UpdateTargets** | **Int64** |  | 
**ForumTargets** | **Int64** |  | 
**OtherFolderTargets** | **Int64** |  | 
**NotReceivedTargets** | **Int64** |  | 
**AverageDeliveredRatePercentage** | **Double** |  | 
**AverageInboxRatePercentage** | **Double** |  | 
**AverageSpamRatePercentage** | **Double** |  | 
**AveragePromotionRatePercentage** | **Double** |  | 
**AverageNotReceivedRatePercentage** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementAnalyticsSummaryDto = Initialize-maislurp-client-powershellInboxPlacementAnalyticsSummaryDto  -TotalRuns null `
 -CompletedRuns null `
 -ActiveRuns null `
 -FailedRuns null `
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
 -AverageDeliveredRatePercentage null `
 -AverageInboxRatePercentage null `
 -AverageSpamRatePercentage null `
 -AveragePromotionRatePercentage null `
 -AverageNotReceivedRatePercentage null
```

- Convert the resource to JSON
```powershell
$InboxPlacementAnalyticsSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

