# InboxPlacementPublicShareDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**InboxPlacementPublicTestRunDto**](InboxPlacementPublicTestRunDto) |  | 
**Results** | [**InboxPlacementRemoteResultsDto**](InboxPlacementRemoteResultsDto) |  | [optional] 
**SpamScores** | [**InboxPlacementSpamScoreDto[]**](InboxPlacementSpamScoreDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementPublicShareDto = Initialize-maislurp-client-powershellInboxPlacementPublicShareDto  -Run null `
 -Results null `
 -SpamScores null
```

- Convert the resource to JSON
```powershell
$InboxPlacementPublicShareDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

