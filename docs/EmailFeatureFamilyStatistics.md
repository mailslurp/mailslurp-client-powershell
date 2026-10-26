# EmailFeatureFamilyStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Feature** | **String** |  | 
**Family** | **String** |  | 
**Platforms** | [**EmailFeaturePlatformStatistics[]**](EmailFeaturePlatformStatistics) |  | 

## Examples

- Prepare the resource
```powershell
$EmailFeatureFamilyStatistics = Initialize-maislurp-client-powershellEmailFeatureFamilyStatistics  -Feature null `
 -Family null `
 -Platforms null
```

- Convert the resource to JSON
```powershell
$EmailFeatureFamilyStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

