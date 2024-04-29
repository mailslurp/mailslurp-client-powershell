# MissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MissedEmailProjection = Initialize-maislurp-client-powershellMissedEmailProjection  -CreatedAt null `
 -UserId null `
 -Subject null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$MissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

