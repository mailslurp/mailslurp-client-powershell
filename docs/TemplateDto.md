# TemplateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Variables** | [**TemplateVariable[]**](TemplateVariable) |  | [optional] 
**Content** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

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

