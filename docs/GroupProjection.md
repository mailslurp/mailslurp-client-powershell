# GroupProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Name** | **String** |  | 
**Id** | **String** |  | 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupProjection = Initialize-maislurp-client-powershellGroupProjection  -CreatedAt null `
 -Name null `
 -Id null `
 -Description null
```

- Convert the resource to JSON
```powershell
$GroupProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

