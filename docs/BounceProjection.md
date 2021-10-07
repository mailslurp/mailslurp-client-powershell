# BounceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 
**VarSender** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$BounceProjection = Initialize-maislurp-client-powershellBounceProjection  -CreatedAt null `
 -Id null `
 -VarSender null
```

- Convert the resource to JSON
```powershell
$BounceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

