# BounceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**VarSender** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**BounceType** | **String** |  | [optional] 
**BounceMta** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceProjection = Initialize-maislurp-client-powershellBounceProjection  -Id null `
 -Subject null `
 -VarSender null `
 -CreatedAt null `
 -BounceType null `
 -BounceMta null
```

- Convert the resource to JSON
```powershell
$BounceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

