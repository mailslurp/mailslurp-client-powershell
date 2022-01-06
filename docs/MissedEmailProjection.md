# MissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MissedEmailProjection = Initialize-maislurp-client-powershellMissedEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -UserId null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$MissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

