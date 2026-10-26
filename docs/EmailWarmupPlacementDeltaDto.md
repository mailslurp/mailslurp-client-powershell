# EmailWarmupPlacementDeltaDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** |  | 
**BaselineInboxPercent** | **Int32** |  | 
**LatestInboxPercent** | **Int32** |  | 
**PercentagePointChange** | **Int32** |  | 
**BaselineSampleSize** | **Int32** |  | 
**LatestSampleSize** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupPlacementDeltaDto = Initialize-maislurp-client-powershellEmailWarmupPlacementDeltaDto  -Provider null `
 -BaselineInboxPercent null `
 -LatestInboxPercent null `
 -PercentagePointChange null `
 -BaselineSampleSize null `
 -LatestSampleSize null
```

- Convert the resource to JSON
```powershell
$EmailWarmupPlacementDeltaDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

