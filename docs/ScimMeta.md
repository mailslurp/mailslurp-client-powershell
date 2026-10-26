# ScimMeta
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceType** | **String** |  | 
**Created** | **System.DateTime** |  | [optional] 
**LastModified** | **System.DateTime** |  | [optional] 
**Location** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScimMeta = Initialize-maislurp-client-powershellScimMeta  -ResourceType null `
 -Created null `
 -LastModified null `
 -Location null
```

- Convert the resource to JSON
```powershell
$ScimMeta | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

