# TemplateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of template | 
**Name** | **String** | Template name | 
**Variables** | [**TemplateVariable[]**](TemplateVariable) | Variables available in template that can be replaced with values | 
**Content** | **String** | Content of the template | 
**CreatedAt** | **System.DateTime** | Created at time | 

## Examples

- Prepare the resource
```powershell
$TemplateDto = Initialize-maislurp-client-powershellTemplateDto  -Id null `
 -Name null `
 -Variables null `
 -Content null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$TemplateDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

