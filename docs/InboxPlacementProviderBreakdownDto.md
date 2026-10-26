# InboxPlacementProviderBreakdownDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** |  | 
**TotalTargets** | **Int64** |  | 
**DeliveredTargets** | **Int64** |  | 
**InboxTargets** | **Int64** |  | 
**SpamTargets** | **Int64** |  | 
**NotReceivedTargets** | **Int64** |  | 
**DeliveredRatePercentage** | **Double** |  | 
**InboxRatePercentage** | **Double** |  | 
**SpamRatePercentage** | **Double** |  | 
**NotReceivedRatePercentage** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementProviderBreakdownDto = Initialize-maislurp-client-powershellInboxPlacementProviderBreakdownDto  -Provider null `
 -TotalTargets null `
 -DeliveredTargets null `
 -InboxTargets null `
 -SpamTargets null `
 -NotReceivedTargets null `
 -DeliveredRatePercentage null `
 -InboxRatePercentage null `
 -SpamRatePercentage null `
 -NotReceivedRatePercentage null
```

- Convert the resource to JSON
```powershell
$InboxPlacementProviderBreakdownDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

