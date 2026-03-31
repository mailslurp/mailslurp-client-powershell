# EmailFeatureNames
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Family** | [**EmailFeatureFamilyName[]**](EmailFeatureFamilyName) |  | 
**Platform** | [**EmailFeaturePlatformName[]**](EmailFeaturePlatformName) |  | 
**Category** | [**EmailFeatureCategoryName[]**](EmailFeatureCategoryName) |  | 

## Examples

- Prepare the resource
```powershell
$EmailFeatureNames = Initialize-maislurp-client-powershellEmailFeatureNames  -Family null `
 -Platform null `
 -Category null
```

- Convert the resource to JSON
```powershell
$EmailFeatureNames | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

