# TemplateProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Variables** | **String[]** |  | 
**Name** | **String** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TemplateProjection = Initialize-maislurp-client-powershellTemplateProjection  -UpdatedAt null `
 -CreatedAt null `
 -Variables null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$TemplateProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

