# HomeExperienceUpgradeContextDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecommendedPlan** | **String** |  | [optional] 
**Blockers** | **String[]** |  | [optional] 
**PromptStyle** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeExperienceUpgradeContextDto = Initialize-maislurp-client-powershellHomeExperienceUpgradeContextDto  -RecommendedPlan null `
 -Blockers null `
 -PromptStyle null
```

- Convert the resource to JSON
```powershell
$HomeExperienceUpgradeContextDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

