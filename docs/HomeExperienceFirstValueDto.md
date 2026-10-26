# HomeExperienceFirstValueDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Type** | **String** |  | [optional] 
**At** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeExperienceFirstValueDto = Initialize-maislurp-client-powershellHomeExperienceFirstValueDto  -Status null `
 -Type null `
 -At null
```

- Convert the resource to JSON
```powershell
$HomeExperienceFirstValueDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

