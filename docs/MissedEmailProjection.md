# MissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MissedEmailProjection = Initialize-maislurp-client-powershellMissedEmailProjection  -CreatedAt null `
 -VarFrom null `
 -Id null `
 -Subject null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$MissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

