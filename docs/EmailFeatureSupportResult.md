# EmailFeatureSupportResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Names** | [**EmailFeatureNames**](EmailFeatureNames) |  | 
**DetectedFeatures** | **String[]** |  | 
**FeatureOverviews** | [**EmailFeatureOverview[]**](EmailFeatureOverview) |  | 
**FeaturePercentages** | [**EmailFeatureSupportStatusPercentage[]**](EmailFeatureSupportStatusPercentage) |  | 

## Examples

- Prepare the resource
```powershell
$EmailFeatureSupportResult = Initialize-maislurp-client-powershellEmailFeatureSupportResult  -Names null `
 -DetectedFeatures null `
 -FeatureOverviews null `
 -FeaturePercentages null
```

- Convert the resource to JSON
```powershell
$EmailFeatureSupportResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

