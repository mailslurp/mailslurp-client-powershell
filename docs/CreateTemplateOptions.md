# CreateTemplateOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Content** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CreateTemplateOptions = Initialize-maislurp-client-powershellCreateTemplateOptions  -Name null `
 -Content null
```

- Convert the resource to JSON
```powershell
$CreateTemplateOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

