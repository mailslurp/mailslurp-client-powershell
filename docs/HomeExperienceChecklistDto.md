# HomeExperienceChecklistDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChecklistId** | **String** |  | 
**Status** | **String** |  | 
**Steps** | [**HomeExperienceChecklistStepDto[]**](HomeExperienceChecklistStepDto) |  | 

## Examples

- Prepare the resource
```powershell
$HomeExperienceChecklistDto = Initialize-maislurp-client-powershellHomeExperienceChecklistDto  -ChecklistId null `
 -Status null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$HomeExperienceChecklistDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

