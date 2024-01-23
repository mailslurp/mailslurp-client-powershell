# UnknownMissedEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Subject** | **String** |  | [optional] 
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UnknownMissedEmailProjection = Initialize-maislurp-client-powershellUnknownMissedEmailProjection  -To null `
 -CreatedAt null `
 -Subject null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$UnknownMissedEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

