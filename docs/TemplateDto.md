# TemplateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**Name** | **String** |  | 
**Variables** | [**TemplateVariable[]**](TemplateVariable) |  | 

## Examples

- Prepare the resource
```powershell
$TemplateDto = Initialize-maislurp-client-powershellTemplateDto  -Content null `
 -CreatedAt null `
 -Id null `
 -Name null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$TemplateDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

