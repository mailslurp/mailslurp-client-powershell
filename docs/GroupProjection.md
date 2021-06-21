# GroupProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | 
**Name** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GroupProjection = Initialize-maislurp-client-powershellGroupProjection  -CreatedAt null `
 -Description null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GroupProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

