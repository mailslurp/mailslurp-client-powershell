# MissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$MissedEmailProjection = Initialize-maislurp-client-powershellMissedEmailProjection  -Id null `
 -VarFrom null `
 -UserId null `
 -Subject null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$MissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

