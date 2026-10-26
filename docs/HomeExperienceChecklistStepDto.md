# HomeExperienceChecklistStepDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Title** | **String** |  | 
**Status** | **String** |  | 
**RouteName** | **String** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeExperienceChecklistStepDto = Initialize-maislurp-client-powershellHomeExperienceChecklistStepDto  -Id null `
 -Title null `
 -Status null `
 -RouteName null `
 -CompletedAt null
```

- Convert the resource to JSON
```powershell
$HomeExperienceChecklistStepDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

