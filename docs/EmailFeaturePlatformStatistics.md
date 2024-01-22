# EmailFeaturePlatformStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Platform** | **String** |  | 
**Versions** | [**EmailFeatureVersionStatistics[]**](EmailFeatureVersionStatistics) |  | 

## Examples

- Prepare the resource
```powershell
$EmailFeaturePlatformStatistics = Initialize-maislurp-client-powershellEmailFeaturePlatformStatistics  -Platform null `
 -Versions null
```

- Convert the resource to JSON
```powershell
$EmailFeaturePlatformStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

