# UnknownMissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UnknownMissedEmailProjection = Initialize-maislurp-client-powershellUnknownMissedEmailProjection  -CreatedAt null `
 -VarFrom null `
 -Id null `
 -Subject null `
 -To null
```

- Convert the resource to JSON
```powershell
$UnknownMissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

