# BounceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**VarSender** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceProjection = Initialize-maislurp-client-powershellBounceProjection  -Id null `
 -VarSender null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$BounceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

