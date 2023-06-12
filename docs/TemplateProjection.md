# TemplateProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Variables** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$TemplateProjection = Initialize-maislurp-client-powershellTemplateProjection  -Name null `
 -Id null `
 -CreatedAt null `
 -UpdatedAt null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$TemplateProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

