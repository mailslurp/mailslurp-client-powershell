# InboxPlacementDeliverabilitySummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalTargets** | **Int32** |  | 
**MatchedTargets** | **Int32** |  | 
**InboxTargets** | **Int32** |  | 
**SpamTargets** | **Int32** |  | 
**NotReceivedTargets** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementDeliverabilitySummaryDto = Initialize-maislurp-client-powershellInboxPlacementDeliverabilitySummaryDto  -TotalTargets null `
 -MatchedTargets null `
 -InboxTargets null `
 -SpamTargets null `
 -NotReceivedTargets null
```

- Convert the resource to JSON
```powershell
$InboxPlacementDeliverabilitySummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

