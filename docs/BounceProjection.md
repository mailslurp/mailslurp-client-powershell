# BounceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarSender** | **String** |  | 
**BounceMta** | **String** |  | [optional] 
**BounceType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Subject** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceProjection = Initialize-maislurp-client-powershellBounceProjection  -VarSender null `
 -BounceMta null `
 -BounceType null `
 -CreatedAt null `
 -Subject null `
 -Id null
```

- Convert the resource to JSON
```powershell
$BounceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

