# GroupProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupProjection = Initialize-maislurp-client-powershellGroupProjection  -Name null `
 -Id null `
 -CreatedAt null `
 -Description null
```

- Convert the resource to JSON
```powershell
$GroupProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

