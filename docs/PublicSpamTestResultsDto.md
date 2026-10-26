# PublicSpamTestResultsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**PublicSpamTestRunDto**](PublicSpamTestRunDto) |  | 
**Results** | [**InboxPlacementRemoteResultsDto**](InboxPlacementRemoteResultsDto) |  | [optional] 
**SpamScores** | [**InboxPlacementSpamScoreDto[]**](InboxPlacementSpamScoreDto) |  | 

## Examples

- Prepare the resource
```powershell
$PublicSpamTestResultsDto = Initialize-maislurp-client-powershellPublicSpamTestResultsDto  -Run null `
 -Results null `
 -SpamScores null
```

- Convert the resource to JSON
```powershell
$PublicSpamTestResultsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

