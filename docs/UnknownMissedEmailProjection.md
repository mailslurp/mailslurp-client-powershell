# UnknownMissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UnknownMissedEmailProjection = Initialize-maislurp-client-powershellUnknownMissedEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -To null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$UnknownMissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

