# EmailFeatureOverview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Feature** | **String** |  | 
**Title** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Category** | **String** |  | [optional] 
**Notes** | **String** |  | [optional] 
**NotesNumbers** | **System.Collections.Hashtable** |  | [optional] 
**FeatureStatistics** | [**EmailFeatureFamilyStatistics[]**](EmailFeatureFamilyStatistics) |  | [optional] 
**Statuses** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$EmailFeatureOverview = Initialize-maislurp-client-powershellEmailFeatureOverview  -Feature null `
 -Title null `
 -Description null `
 -Category null `
 -Notes null `
 -NotesNumbers null `
 -FeatureStatistics null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$EmailFeatureOverview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

