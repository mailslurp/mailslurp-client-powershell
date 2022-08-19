# BounceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**VarSender** | **String** |  | 
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**BounceMta** | **String** |  | [optional] 
**BounceType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceProjection = Initialize-maislurp-client-powershellBounceProjection  -Id null `
 -VarSender null `
 -Subject null `
 -CreatedAt null `
 -BounceMta null `
 -BounceType null
```

- Convert the resource to JSON
```powershell
$BounceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

