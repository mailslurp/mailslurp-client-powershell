# UnknownMissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UnknownMissedEmailProjection = Initialize-maislurp-client-powershellUnknownMissedEmailProjection  -Subject null `
 -To null `
 -CreatedAt null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$UnknownMissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

