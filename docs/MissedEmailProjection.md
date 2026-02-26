# MissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MissedEmailProjection = Initialize-maislurp-client-powershellMissedEmailProjection  -Subject null `
 -UserId null `
 -CreatedAt null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$MissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

