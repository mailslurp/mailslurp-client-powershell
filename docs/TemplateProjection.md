# TemplateProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**Name** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Variables** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$TemplateProjection = Initialize-maislurp-client-powershellTemplateProjection  -CreatedAt null `
 -Id null `
 -Name null `
 -UpdatedAt null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$TemplateProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

