# BounceProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**VarSender** | **String** |  | 
**BounceType** | **String** |  | [optional] 
**BounceMta** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceProjection = Initialize-maislurp-client-powershellBounceProjection  -Subject null `
 -CreatedAt null `
 -VarSender null `
 -BounceType null `
 -BounceMta null `
 -Id null
```

- Convert the resource to JSON
```powershell
$BounceProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

