# HomeExperienceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **String** |  | 
**HomeVariant** | **String** |  | 
**PrimaryPath** | **String** |  | 
**SecondaryPaths** | **String[]** |  | [optional] 
**Persona** | **String** |  | [optional] 
**TeamSize** | **String** |  | [optional] 
**Checklist** | [**HomeExperienceChecklistDto**](HomeExperienceChecklistDto) |  | [optional] 
**FirstValue** | [**HomeExperienceFirstValueDto**](HomeExperienceFirstValueDto) |  | 
**UpgradeContext** | [**HomeExperienceUpgradeContextDto**](HomeExperienceUpgradeContextDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeExperienceDto = Initialize-maislurp-client-powershellHomeExperienceDto  -Version null `
 -HomeVariant null `
 -PrimaryPath null `
 -SecondaryPaths null `
 -Persona null `
 -TeamSize null `
 -Checklist null `
 -FirstValue null `
 -UpgradeContext null
```

- Convert the resource to JSON
```powershell
$HomeExperienceDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

