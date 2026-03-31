# TemplateVariable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of variable. This can be used in a template as {{name}} | 
**VariableType** | **String** | The type of variable | 

## Examples

- Prepare the resource
```powershell
$TemplateVariable = Initialize-maislurp-client-powershellTemplateVariable  -Name null `
 -VariableType null
```

- Convert the resource to JSON
```powershell
$TemplateVariable | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

