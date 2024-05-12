# EmailFeatureVersionStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **String** |  | 
**SupportFlags** | [**EmailFeatureSupportFlags**](EmailFeatureSupportFlags) |  | 

## Examples

- Prepare the resource
```powershell
$EmailFeatureVersionStatistics = Initialize-maislurp-client-powershellEmailFeatureVersionStatistics  -Version null `
 -SupportFlags null
```

- Convert the resource to JSON
```powershell
$EmailFeatureVersionStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

