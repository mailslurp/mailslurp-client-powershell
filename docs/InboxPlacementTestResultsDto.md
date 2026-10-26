# InboxPlacementTestResultsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**InboxPlacementTestRunDto**](InboxPlacementTestRunDto) |  | 
**Results** | [**InboxPlacementRemoteResultsDto**](InboxPlacementRemoteResultsDto) |  | 
**SpamScores** | [**InboxPlacementSpamScoreDto[]**](InboxPlacementSpamScoreDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementTestResultsDto = Initialize-maislurp-client-powershellInboxPlacementTestResultsDto  -Run null `
 -Results null `
 -SpamScores null
```

- Convert the resource to JSON
```powershell
$InboxPlacementTestResultsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

