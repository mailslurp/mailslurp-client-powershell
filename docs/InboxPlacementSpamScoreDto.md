# InboxPlacementSpamScoreDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Segment** | **String** |  | [optional] 
**SpamScoreOutOfTen** | **Double** |  | 
**SpamScoreVariant** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementSpamScoreDto = Initialize-maislurp-client-powershellInboxPlacementSpamScoreDto  -Segment null `
 -SpamScoreOutOfTen null `
 -SpamScoreVariant null
```

- Convert the resource to JSON
```powershell
$InboxPlacementSpamScoreDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

